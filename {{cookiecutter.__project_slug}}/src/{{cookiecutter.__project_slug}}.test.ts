import { describe, expect, it } from 'vitest';
import { {{cookiecutter.__class_name}} } from 'src/{{cookiecutter.__project_slug}}.ts';

describe('{{cookiecutter.project_name}}', () => {
    it('Creating an instance of the {{cookiecutter.__class_name}} class should work', () => {
        const clazz = new {{cookiecutter.__class_name}}();
        expect(clazz).toBeDefined();
    });
});
