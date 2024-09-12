from setuptools import setup

setup(
    name='siphon-cli',
    version='0.1',
    py_modules=['siphon'],
    install_requires=[
        'gitpython',
    ],
    entry_points='''
        [console_scripts]
        si=siphon:main
    ''',
)
