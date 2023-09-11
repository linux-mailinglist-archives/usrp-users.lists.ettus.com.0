Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F370A79A8E2
	for <lists+usrp-users@lfdr.de>; Mon, 11 Sep 2023 16:46:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C4A59384BDE
	for <lists+usrp-users@lfdr.de>; Mon, 11 Sep 2023 10:46:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694443609; bh=aWxNrzx95MRy5OzuVUCy6zyM2COUSFRuZPKUjGT/qCQ=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cIqK+7S6XSQIWoNiu9SfQ/dVk+bZ9NeLY1p90gD0d9/A1ddmaDUDYHPkQoCzewoO0
	 9E01+oq1XTriebcYQYXKQIwUN4WFLa3EKalGddWv/E4mRRDAC0IB6KalW3PR0b8BlQ
	 udXOwjbQ5Fx5soCYaKT0T0HwiH2JbRmZEkyA3Hj9jhjGsRCgjZrizj+Ufpi64Qw6Jf
	 9nK30LfBVYnI80dyaFs8qplq6R7ISgpRTP2tmOtweCwIt/x2tGGjANezZMO0TygA9s
	 DtMwnAr1WPvjceOGmfL/W1mZ4sPR0VGvvKQnR3gyOGY+VjEhoMyIoIPxUNaPZ80Fsa
	 lDmDOpWPrBOXw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7534383EA0
	for <usrp-users@lists.ettus.com>; Mon, 11 Sep 2023 10:46:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694443591; bh=gs7DAuEFfftQi8mIdq02fio0uLh0LN0L06nJx0JN2OE=;
	h=Date:To:From:Subject:From;
	b=L6Chc0eoZLD1wwZyBy5SEYAkDTAplp+i6sAGN0qyLZkylyQKHhEozRLH7A932cvYx
	 VnANuYyOiLnEsjZYrRyLylbM6aKImXCrkvgrj1dZ9t9nnjppYSlSpFc2URBHTj7hRA
	 nl88ckheeIPSnKXeAkbZXLSAfR46sk4GFneXyGTZ2dZYZ8woCk1rgwOL7AsZYMx2sS
	 sud/59ZBS9eQy/PRf9TDBZdaJlN7nWrWk+HUUNODeab1tGoJVSt7WYYM5DJuJt/2i6
	 eiDDX+bARRpy00C2oCxiEBVsOYUbsOZKFfjAnJ6ZNwMzTE/f4JZQV2YG4eYkeIFFDR
	 r2IkoieoLm4+g==
Date: Mon, 11 Sep 2023 14:46:31 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <f3EfjpseCTH4UCC2YfgJLQa0PAECep5fuLxRlo5os@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 4GM5EPDSFJKW55KSQUBU43XIYTN52BTR
X-Message-ID-Hash: 4GM5EPDSFJKW55KSQUBU43XIYTN52BTR
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reading Gps-servo Sensor Values Using UHD API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4GM5EPDSFJKW55KSQUBU43XIYTN52BTR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0915082618271139925=="

This is a multi-part message in MIME format.

--===============0915082618271139925==
Content-Type: multipart/alternative;
 boundary="b1_f3EfjpseCTH4UCC2YfgJLQa0PAECep5fuLxRlo5os"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_f3EfjpseCTH4UCC2YfgJLQa0PAECep5fuLxRlo5os
Content-Type: text/plain; charset=us-ascii

Hi there,

As per [this email](https://lists.ettus.com/empathy/thread/RGLYU7I7MM6ZPB34ZEBMWCQ7GM7PVMJJ?hash=RGLYU7I7MM6ZPB34ZEBMWCQ7GM7PVMJJ#RGLYU7I7MM6ZPB34ZEBMWCQ7GM7PVMJJ "https://lists.ettus.com/empathy/thread/RGLYU7I7MM6ZPB34ZEBMWCQ7GM7PVMJJ?hash=RGLYU7I7MM6ZPB34ZEBMWCQ7GM7PVMJJ#RGLYU7I7MM6ZPB34ZEBMWCQ7GM7PVMJJ") I know that one can see the number of tracked satellites etc. by reading the gps_servo sensor in addition to gpgga and gprmc strings.

I was wondering whether it is possible to read the NMEA strings themselves using UHD. Any pointers would be much appreciated.

Best,

Eden.

--b1_f3EfjpseCTH4UCC2YfgJLQa0PAECep5fuLxRlo5os
Content-Type: text/html; charset=us-ascii

<p>Hi there,</p><p class="">As per <a href="https://lists.ettus.com/empathy/thread/RGLYU7I7MM6ZPB34ZEBMWCQ7GM7PVMJJ?hash=RGLYU7I7MM6ZPB34ZEBMWCQ7GM7PVMJJ#RGLYU7I7MM6ZPB34ZEBMWCQ7GM7PVMJJ" title="https://lists.ettus.com/empathy/thread/RGLYU7I7MM6ZPB34ZEBMWCQ7GM7PVMJJ?hash=RGLYU7I7MM6ZPB34ZEBMWCQ7GM7PVMJJ#RGLYU7I7MM6ZPB34ZEBMWCQ7GM7PVMJJ">this email</a> I know that one can see the number of tracked satellites etc. by reading the gps_servo sensor in addition to gpgga and gprmc strings.</p><p class="">I was wondering whether it is possible to read the NMEA strings themselves using UHD. Any pointers would be much appreciated.</p><p>Best,</p><p>Eden.</p>


--b1_f3EfjpseCTH4UCC2YfgJLQa0PAECep5fuLxRlo5os--

--===============0915082618271139925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0915082618271139925==--
