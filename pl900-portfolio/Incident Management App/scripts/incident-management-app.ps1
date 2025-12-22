Patch(
    Incidents,
    Defaults(Incidents),
    {
        Title: txtTitle.Text,
        Description: txtDescription.Text,
        Category: drpCategory.Selected,
        Status: drpStatus.Selected,
        Priority: drpPriority.Selected.Value,
        AssignedTo: drpAssignedTo.Selected.Email
    }
);
