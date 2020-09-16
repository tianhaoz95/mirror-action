import os
import subprocess

project_dir = os.path.dirname(os.path.realpath(__file__))

if 'GITHUB_WORKSPACE' not in os.environ:
    os.environ['GITHUB_WORKSPACE'] = project_dir


def test_matching_message():
    output = subprocess.check_output(
        [os.path.join(project_dir, 'entrypoint.sh'), 'README.md', 'docs/README.md'])
    assert('Done' in str(output))


def test_matching_content():
    output = subprocess.run(
        [os.path.join(project_dir, 'entrypoint.sh'), 'README.md', 'docs/README.md'])
    assert(output.returncode == 0)


def test_completely_different():
    output = subprocess.run([os.path.join(
        project_dir, 'entrypoint.sh'), 'README.md', 'fixture/completely_different.md'])
    assert(output.returncode == 1)
