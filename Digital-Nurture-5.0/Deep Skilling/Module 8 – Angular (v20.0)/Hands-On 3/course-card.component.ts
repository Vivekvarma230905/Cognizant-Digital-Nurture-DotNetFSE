import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-course-card',
  templateUrl: './course-card.component.html',
  styleUrls: ['./course-card.component.css']
})
export class CourseCardComponent {
  @Input() course!: { id: number; name: string; code: string; credits: number; gradeStatus: string };
  isExpanded = false;

  get cardClasses() {
    return {
      'card--enrolled': this.course.credits < 4,
      'card--full': this.course.credits >= 4,
      'expanded': this.isExpanded
    };
  }

  get borderColor(): string {
    switch (this.course.gradeStatus) {
      case 'passed':
        return '4px solid green';
      case 'failed':
        return '4px solid red';
      case 'pending':
        return '4px solid grey';
      default:
        return '4px solid #ccc';
    }
  }

  toggleExpand() {
    this.isExpanded = !this.isExpanded;
  }
}
