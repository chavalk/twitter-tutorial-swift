//
//  AuthService.swift
//  TwitterTutorial
//
//  Created by Jose Garcia on 1/27/23.
//

import Foundation

struct AuthService {
    static let shared = AuthService()
    
    func registerUser() {
        guard let imageData = profileImage.jpegData(compressionQuality: 0.3) else { return }
        let fileName = NSUUID().uuidString
        let storageRef = STORAGE_PROFILE_IMAGES.child(fileName)
        
        storageRef.putData(imageData, metadata: nil) { meta, error in
            if let error = error {
                print("DEBUG: Error is \(error.localizedDescription)")
                return
            }
            storageRef.downloadURL { url, error in
                if let error = error {
                    print("DEBUG: Error is \(error.localizedDescription)")
                    return
                }
                guard let profileImageUrl = url?.absoluteString else { return }
                
                Auth.auth().createUser(withEmail: email, password: password) { result, error in
                    if let error = error {
                        print("DEBUG: Error is \(error.localizedDescription)")
                        return
                    }
                    
                    guard let uid = result?.user.uid else { return }
                    
                    let values = ["email": email, "username": username, "fullName": fullName, "profileImageUrl": profileImageUrl]
                    
                    REF_USERS.child(uid).updateChildValues(values) { (error, ref) in
                        print("DEBUG: Sucessfully updated user information")
                    }
                }
            }
        }
    }
}
