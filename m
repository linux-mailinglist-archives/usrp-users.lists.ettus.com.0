Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D82C113713
	for <lists+usrp-users@lfdr.de>; Sat,  4 May 2019 04:50:28 +0200 (CEST)
Received: from [::1] (port=44654 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMkkp-0001pg-Gy; Fri, 03 May 2019 22:50:23 -0400
Received: from mail-it1-f173.google.com ([209.85.166.173]:54679)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <james.jordan.fun@gmail.com>)
 id 1hMkkH-0001k5-J2
 for usrp-users@lists.ettus.com; Fri, 03 May 2019 22:50:19 -0400
Received: by mail-it1-f173.google.com with SMTP id a190so12365046ite.4
 for <usrp-users@lists.ettus.com>; Fri, 03 May 2019 19:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=9wkf+hdIOUQKkR972dqpnmcaczTksw7NCFScDueiceY=;
 b=PLa8Sg8QeWJ/6Ye4TYHvcAN8vcWE4OOwUPuleUlqVz5RBa0wCJ85QNdmQWi1WRSHpr
 +4ZNkTFQlim8Et7VeczjZYFX6BcLqZzzxYCmEE/e0H3VQaC2Tyd+qJIDXXp9Bs7nB79J
 27Wj8t1E8lmYj3pFptcPgOnKdTuz7P+haiK3ivtZXa6a04W6/COByjL6GmkPigNsAC1g
 G6Oyx3j/B30Fd1bWxQIt9hVA1AnKWfKPh0grQJl/0OhkhcDsXq+iGU3X8SoVhi/8UWVK
 peClAWWw66f6t/nCmawNDtnqXACbqMW4wFhEZvxYA1Y6vkEVLu2tuUNwBFUBCYDsnhtD
 l+YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9wkf+hdIOUQKkR972dqpnmcaczTksw7NCFScDueiceY=;
 b=oGUuYLnPkwnzFEfP7JwXSRCBMjoH+rtBuom0jtejjvDyBKeLKm/J+n5XvW/MXZz+rC
 hLtaFMgbY9+FYwMeVCe18/gyKo1/bnHSyPCJcyKg3SLXZvME4hPhywzh484HKf+MEFJ4
 MZaRyVgqW/qsYsz/IbHSWWHbFPpeE9SYzaCBoryG/N4JH7VDWgY4UJjn7C2+oCof16a8
 QC1L0fFfGCNfj1GI/iCfZNCPbBHX+Bt6MPk3FBzR7sXf5V4cWBgofL9Bb+3tJjIlIV8c
 p+Us3YBRQXjwHQoRY/pqlxVrNvHyn8tHjWoXLsLGPeI+SUKGXanyA5GeDLwUpq8EsJ/Z
 rUKw==
X-Gm-Message-State: APjAAAVW4WIr2i91KswnGWHVA/w1QEHVoaEhWgAKjXVxEvB/m3GpPa96
 5+OrPeMMHKPqbZ+CMU2k6rKK6g5btCVLMjbDnJ/JXg==
X-Google-Smtp-Source: APXvYqxkuCrr13pZ/ssXP/HNfgadMY/qX0pt7F+t4dGDKGDRWHnVl/60xAULSr3vk3TDtVuznumvsnrX3twKrN7/arA=
X-Received: by 2002:a24:1052:: with SMTP id 79mr10633561ity.158.1556938148847; 
 Fri, 03 May 2019 19:49:08 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 4 May 2019 10:48:58 +0800
Message-ID: <CAFBh5UG1_VL89hqwUney40LMud4i_MBrPK7Kha3FRGouwwfOYQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] what is the difference between UBX and UBX REVC
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: James Jordan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: James Jordan <james.jordan.fun@gmail.com>
Content-Type: multipart/mixed; boundary="===============1550065042954919448=="
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

--===============1550065042954919448==
Content-Type: multipart/alternative; boundary="0000000000004ca32b058806e900"

--0000000000004ca32b058806e900
Content-Type: text/plain; charset="UTF-8"

Hi,
i want to know the difference between UBX and UBX rev-c.

--0000000000004ca32b058806e900
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>i want to know the difference between UBX and UBX =
rev-c.=C2=A0</div></div>

--0000000000004ca32b058806e900--


--===============1550065042954919448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1550065042954919448==--

