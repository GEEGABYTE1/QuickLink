//
//  JobUserModel.swift
//  QuickLink
//
//  Created by Jaival Patel on 2022-08-02.
//

import Foundation
var rel_user_job: String = ""
var next_j_counter: Int = 0
var usernames_data_keys_job = hackathon_accounts.accounts_hack.keys
var usernames_list_job = [cur_username]
var maximum_job: Bool = false

var current_username_job: String = cur_username
var current_username_langauges_job : String = rel_languages
var current_username_hackathons_job: String = no_hackswon
var current_username_skills_job: String = rel_skills
var current_username_bio_job: String = rel_bio


func test_keys_job() {
    if maximum_job == true {
        maximum_job = false
        next_j_counter = 0
    }
    print(usernames_data_keys_job)
    print(type(of:usernames_data_keys_job))
    print("List of Usernames")
    for username in usernames_data_keys_job {
        if usernames_list.contains(username) {
            print("Username: \(username) in usernames list: \(usernames_list_job)")
        } else {
            print(username)
            usernames_list_job.append(username)
        }

    }
    
}

func set_vars_job() {
    
    if next_j_counter >= usernames_list_job.count {
        print("Reached Maximum Count")
        current_username_job = cur_username
        current_username_langauges_job = rel_languages
        current_username_hackathons_job = no_hackswon
        current_username_skills_job = rel_skills
        current_username_bio_job = rel_bio
        usernames_list_job = [cur_username]
        maximum_job = true
    } else {
        print("Usernames List Count: \(usernames_list_job.count)")
        current_username_job = usernames_list_job[next_j_counter]
        print("Current username: \(current_username_job)")
        let current_username_full_data = job_accounts.accounts_job[current_username_job]!
        current_username_langauges = current_username_full_data[1]
        print("Current username will be updated to: \(current_username_full_data)")
        current_username_hackathons = current_username_full_data[2]
        print("Current username hacakathon will be updated to: \(current_username_hackathons)")
        current_username_skills = current_username_full_data[3]
        print("Current username skills will be updated to: \(current_username_skills)")
        current_username_bio = job_accounts.accounts_job_bio[current_username]!
        print("Current username bio will be updated to: \(current_username_bio)")
    }

    
}

// Sample Connections

var message_username_job: String = ""
var message_from_data_job: String = ""
var message_index_job: Int = 0
var message_iteration_max_job: Bool = false
var message_users_job: [String] = ["Dummy Account"]


func filter_accounts_job() {
    
    if message_iteration_max_job == true {
        message_index_job = 0
        message_iteration_max_job = false
    }
    let dictionary = job_accounts.accounts_networks_job
    let relative_connection_data = dictionary[cur_username]!
    for name in relative_connection_data.keys {
        if message_users_job.contains(name) {
            print("Name: \(name) already in message users list: \(message_users_job)")
            
        } else {
            message_users_job.append(name)
        }
    }

    
}


func fetch_messages_job() {
    print("Message Users Count: \(message_users_job.count)")
    if message_index_job >= message_users_job.count {
        
        message_username_job = "None"
        message_from_data_job = "None"
        message_iteration_max_job = true
    } else {
        let message_dictionary = job_accounts.accounts_networks_job
        let relative_connection_data = message_dictionary[cur_username]!
        message_username = message_users_job[message_index_job]
        message_from_data = relative_connection_data[message_username_job]![0]
        print("Message Username: \(message_username_job)")
        print("Message Data: \(message_from_data_job)")
        
    }

    
}
