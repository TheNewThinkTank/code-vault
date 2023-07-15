# Virtual Environments

## Poetry
create new poetry project<br>
`poetry init`

create virtual env inside project dir<br>
`poetry config virtualenvs.in-project true`

create virtual env<br>
`poetry install`

inspect<br>
`poetry env info`

inspect path<br>
`poetry env info -p`

activate virtual env<br>
`poetry shell`

run tests<br>
`pytest`

install django<br>
`poetry add django`

uninstall<br>
`poetry remove some-package`

close virtual env shell<br>
`exit`

check which virtual env is active<br>
`poetry env list`

close shell and deactivate virtual env<br>
`deactivate`
