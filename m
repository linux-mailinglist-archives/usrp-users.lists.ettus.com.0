Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E39861324E9
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jan 2020 12:32:30 +0100 (CET)
Received: from [::1] (port=48570 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ion62-0008QI-LY; Tue, 07 Jan 2020 06:32:26 -0500
Received: from mail-pl1-f172.google.com ([209.85.214.172]:44825)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <qiu.guowang007@gmail.com>)
 id 1ion5z-0008Mi-Fi
 for usrp-users@lists.ettus.com; Tue, 07 Jan 2020 06:32:23 -0500
Received: by mail-pl1-f172.google.com with SMTP id az3so23087363plb.11
 for <usrp-users@lists.ettus.com>; Tue, 07 Jan 2020 03:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:mime-version:subject:date:from:to:cc;
 bh=3C0RVnY9/2ylNSCo3/iyu7dNicQx7ovLydd7JNbNIxs=;
 b=dnbl7BpoKeHG76lQ35Ao9jt0sUT78RE0ZLtiR+sKx0zKhym/zTeNtOAw5XbGZrf+A4
 1/Y+8Bvv+l+NuSQfDvRTqDKmaQrRaiF1E2Jd7LGPQ9K0KYco5OhAuTpn9NPsAOMxvy8l
 UQswA/pP2prehIlYX/4ZCUoFKLEBjFCH81fqsIcy+dHXky31295shKhBXTsOeP7oCwtq
 1XADwgco5zAAnMzNEXqI0X632n983nEL4oUDlEfl5Z67R6x1sd62ARCkm/BoAi17upWo
 UEpzwJo+3G4MNjEWTJbAASrvrGyIw/fcsGCNK73c29zUDvK6nQCQ4j7j5lilefpjVlMu
 1jgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version:subject:date:from:to:cc;
 bh=3C0RVnY9/2ylNSCo3/iyu7dNicQx7ovLydd7JNbNIxs=;
 b=Bcu8hWZueQ3KWlgFLbOKJTRIyRbfM7yAvHp2fxWi792fnREkpKeWIpIVPNnMf5daDE
 hgf3DLxoYRUoZggq9lBynotGroOnA5gfGt3C1dFuQmA+KI0B4Q/qUcXyiNSgdf2DCL3O
 bvNUOseBN8bz/oePMLLEKkh6gXn4aOtNzW9qA6GrPHJEp5uJWmFPvzir6lrg9QFviw2J
 /QHgN7+c3fUnFAriMWwyZiY+FPAAaJsSWBTEIOk1iu3pLt1SNmcjMcdptHpfj5/t4igh
 WMeQyefohxdBMG4Hb8qcgALsEi2TLtjh4chXecx7o/EdN8nheGV4Eo7mX2+Z9FDuuXmX
 G+yg==
X-Gm-Message-State: APjAAAXrWJBSrPpUu/Y2AjxXzRJuXJxACc4EYCFVC2Hea2xplCARE0/w
 SxfvTp3hViGup3L6n7OVYP7q38pK
X-Google-Smtp-Source: APXvYqw9+gNUStrs+11IX7JCNz5RDFR0r4fnPdZDfP94WWmYXYoDiFR/V4dSv7PROZdLkBDNbnwMnA==
X-Received: by 2002:a17:902:b186:: with SMTP id
 s6mr112905394plr.333.1578396702261; 
 Tue, 07 Jan 2020 03:31:42 -0800 (PST)
Received: from localhost (smtpbg506.qq.com. [203.205.250.33])
 by smtp.gmail.com with ESMTPSA id y128sm80012840pfg.17.2020.01.07.03.31.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 Jan 2020 03:31:41 -0800 (PST)
Message-ID: <5e146c1d.1c69fb81.67518.7b7b@mx.google.com>
X-Google-Original-Message-ID: tencent_FC4E0ED7C1F1792B5C4619FE@qq.com
Mime-Version: 1.0
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
Date: Tue, 7 Jan 2020 19:31:39 +0800 (GMT+08:00)
To: =?UTF-8?B?dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20=?=<usrp-users@lists.ettus.com>
Subject: [USRP-users] [WARNING] [GPS] update_cache: Malformed GPSDO string
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Damon Qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?RGFtb24gUWl1?= <qiu.guowang007@gmail.com>
Cc: =?UTF-8?B?RGFtb24gUWl1?= <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============1193829491809747699=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1193829491809747699==
Content-Type: multipart/alternative; 
	boundary="----=_Part_0_96847635.1578396699862"

------=_Part_0_96847635.1578396699862
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: base64


------=_Part_0_96847635.1578396699862
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: base64

PGRpdj5IaSBhbGwsPC9kaXY+PGRpdj5BIEdQU0RPJm5ic3A7IGtpdCBpcyB1c2VkIHRvIHN5bmNo
cm9uaXplIE4yMDAgdG8gR1BTLiZuYnNwO1RoZSBwcm9ncmFtIGlzIHNldCB0byBwZXJpb2RpY2Fs
bHkgZ2V0IGdwc190aW1lIHNlbnNvciBmcm9tIHRoZSBkZXZpY2UgZm9yIHN5bmNocm9uaXphdGlv
bi4gQnV0IG9jY2FzaW9uYWxseSB0aGVyZSBhcmUgd2FybmluZyBwcmludG91dHM6PC9kaXY+PGRp
dj48ZGl2PltXQVJOSU5HXSBbR1BTXSB1cGRhdGVfY2FjaGU6IE1hbGZvcm1lZCBHUFNETyBzdHJp
bmc6ICRHUFJNQyx4eHh4PC9kaXY+PGRpdj5bV0FSTklOR10gW0dQU10gdXBkYXRlX2NhY2hlOiBN
YWxmb3JtZWQgR1BTRE8gc3RyaW5nOiAkR1BHR0EseHh4eDwvZGl2PjwvZGl2PjxkaXY+V2hhdCBk
byB0aGVzZSB3YXJuaW5ncyBtZWFuPyBXaGF0IHNob3VsZCB3ZSBkbyB3aXRoIHRoZXNlIHdhcm5p
bmdzPC9kaXY+PGRpdj5CZXN0IHJlZ2FyZHMsPC9kaXY+PGRpdj5EYW1vbjwvZGl2PjxkaXY+PCEt
LWVtcHR5c2lnbi0tPjwvZGl2Pg==
------=_Part_0_96847635.1578396699862--


--===============1193829491809747699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1193829491809747699==--

