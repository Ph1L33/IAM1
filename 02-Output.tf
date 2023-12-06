#show output for the iam group
output "Sergeant"{
    value = aws_iam_group.sergeants.name
}

output "AIRMEN"{
    value =     aws_iam_user.airmen_one.name
    
}

output "AIRMEN_permissions"{
    value =     aws_iam_group_policy.airmen_policy.id
    
}
