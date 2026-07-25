import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-course-list',
  templateUrl: './course-list.component.html',
  styleUrls: ['./course-list.component.css']
})
export class CourseListComponent implements OnInit {
  isLoading = true;
  courses: any[] = [];

  ngOnInit() {
    setTimeout(() => {
      this.courses = [
        { id: 1, name: 'Math', code: 'M101', credits: 3, gradeStatus: 'passed' },
        { id: 2, name: 'Physics', code: 'P102', credits: 4, gradeStatus: 'failed' },
        { id: 3, name: 'Chemistry', code: 'C103', credits: 2, gradeStatus: 'pending' }
      ];
      this.isLoading = false;
    }, 1500);
  }

  trackByCourseId(index: number, course: any) {
    return course.id;
  }
}
