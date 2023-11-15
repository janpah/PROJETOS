CREATE TABLE [User] (
  [user_id] interger PRIMARY KEY,
  [username] nvarchar(255),
  [email] nvarchar(255),
  [passworld] nvarchar(255)
)
GO

CREATE TABLE [Task] (
  [task_id] interger PRIMARY KEY,
  [user_id] interger,
  [task_name] nvarchar(255),
  [task_description] nvarchar(255),
  [created_data] interger,
  [completed] interger
)
GO

CREATE TABLE [PomodoroLog] (
  [log_id] [pk],
  [user_id] interger,
  [task_id] interger,
  [start_time] interger,
  [end_time] interger,
  [completed_Pom] nvarchar(255)
)
GO

ALTER TABLE [Task] ADD FOREIGN KEY ([user_id]) REFERENCES [User] ([user_id])
GO

ALTER TABLE [PomodoroLog] ADD FOREIGN KEY ([user_id]) REFERENCES [User] ([user_id])
GO

ALTER TABLE [PomodoroLog] ADD FOREIGN KEY ([task_id]) REFERENCES [Task] ([task_id])
GO

ALTER TABLE [Task] ADD FOREIGN KEY ([task_id]) REFERENCES [User] ([user_id])
GO

ALTER TABLE [PomodoroLog] ADD FOREIGN KEY ([log_id]) REFERENCES [Task] ([user_id])
GO

ALTER TABLE [PomodoroLog] ADD FOREIGN KEY ([log_id]) REFERENCES [Task] ([task_id])
GO
