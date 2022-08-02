//
//  HackathonUserModel.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import Foundation


var rel_user: String = ""
var next_counter: Int = 0
var usernames_data_keys = hackathon_accounts.accounts_hack.keys
var usernames_list = [cur_username]
var maximum: Bool = false

var current_username: String = cur_username
var current_username_langauges : String = rel_languages
var current_username_hackathons: String = no_hackswon
var current_username_skills: String = rel_skills
var current_username_bio: String = rel_bio

func test_keys() {
    if maximum == true {
        maximum = false
        next_counter = 0
    }
    print(usernames_data_keys)
    print(type(of:usernames_data_keys))
    print("List of Usernames")
    for username in usernames_data_keys {
        if usernames_list.contains(username) {
            print("Username: \(username) in usernames list: \(usernames_list)")
        } else {
            print(username)
            usernames_list.append(username)
        }

    }
    
}

func set_vars() {
    
    if next_counter >= usernames_list.count {
        print("Reached Maximum Count")
        current_username = cur_username
        current_username_langauges = rel_languages
        current_username_hackathons = no_hackswon
        current_username_skills = rel_skills
        current_username_bio = rel_bio
        usernames_list = [cur_username]
        maximum = true
    } else {
        print("Usernames List Count: \(usernames_list.count)")
        current_username = usernames_list[next_counter]
        print("Current username: \(rel_user)")
        let current_username_full_data = hackathon_accounts.accounts_hack[current_username]!
        current_username_langauges = current_username_full_data[1]
        print("Current username will be updated to: \(current_username_full_data)")
        current_username_hackathons = current_username_full_data[2]
        print("Current username hacakathon will be updated to: \(current_username_hackathons)")
        current_username_skills = current_username_full_data[3]
        print("Current username skills will be updated to: \(current_username_skills)")
        current_username_bio = hackathon_accounts.accounts_bio[current_username]!
        print("Current username bio will be updated to: \(current_username_bio)")
    }

    
}






