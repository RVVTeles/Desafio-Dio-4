run:
	@cmd /C "uvicorn workout_api.main:app --reload"

create-migrations:
	@cmd /C "set PYTHONPATH=%cd% && alembic revision --autogenerate -m $(d)"

run-migrations:
	@cmd /C "set PYTHONPATH=%cd% && alembic upgrade head"