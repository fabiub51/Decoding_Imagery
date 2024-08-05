function estimation_imag(output_dir)

file_dir = strcat(output_dir, '\SPM.mat');

matlabbatch{1}.spm.stats.fmri_est.spmmat = {file_dir};
matlabbatch{1}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{1}.spm.stats.fmri_est.method.Classical = 1;

spm_jobman('run', matlabbatch);