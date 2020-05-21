# Create .env action

Create an .env file from Environment Variables.

## Inputs

### `template`

**Required** The template file to make the .env from.

### `save_as`

Full path to the .env to save. Default `./.env`

## Outputs

### status

Was the action successful or not?

## Example Usage

```
uses: ssgglobal/create-env-action@v0.1.0
with:
    template: './.env.example'
    save_as: './.env'
```