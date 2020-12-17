#SPDX-FileCopyrightText: 2020 Anish Singhani
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0
if [ "$1" == "" ] || [ $# -gt 1 ]; then
    echo "Usage: $0 <path to accelerator_top run>"
    exit 0
fi

cp openlane/user_project_wrapper/runs/user_project_wrapper/results/synthesis/user_project_wrapper.synthesis.v verilog/gl/user_project_wrapper.v
cp $1/results/synthesis/accelerator_top.synthesis.v verilog/gl/accelerator_top.v

