//
//  SignInModel.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-01.
//

import Foundation

func verify_user(rel_user: String) -> Bool {
    // Hackathon Account Model
    let accounts_hack_keys = hackathon_accounts.accounts_hack.keys
    print(accounts_hack_keys)
    for username in accounts_hack_keys {
        if username == rel_user {
            return true
        } else {
            continue
        }
    }
    
    //Job Account Model
    let accounts_job_keys = job_accounts.accounts_job.keys
    print(accounts_job_keys)
    for job_username in accounts_job_keys {
        if job_username == rel_user {
            return true
        } else {
            continue
        }
    }
    
    return false
    
}

func verify_pass(rel_pass: String, rel_user: String) -> Bool {
    
    // Hackathon Check
    if let relative_data = hackathon_accounts.accounts_hack[rel_user] {
        print(relative_data)
        let relative_password = relative_data[1]
        if rel_pass == relative_password {
            return true
        }
    } else {
        
        if let relative_job_data = job_accounts.accounts_job[rel_user] {
            print(relative_job_data)
            let relative_job_password = relative_job_data[1]
            if rel_pass == relative_job_password {
                return true
            }
        } else {
            return false
        }
        
        
    return false
    }
    
    // Should not reach this case
    return false
}


func verify_account(user: String, pass: String) -> Bool {
    let user_verification = verify_user(rel_user: user)
    if user_verification == false {
        print("Username not found")
    } else {
        let pass_result = verify_pass(rel_pass: pass, rel_user: user)
        
        if pass_result == true && user_verification == true {
            return true
        } else {
            return false
        }
    }
    
    // Should not reach this case
    return false
}
