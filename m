Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 883FF20CDE0
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jun 2020 12:20:54 +0200 (CEST)
Received: from [::1] (port=58726 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jpquB-0000rQ-9h; Mon, 29 Jun 2020 06:20:51 -0400
Received: from mail-wm1-f47.google.com ([209.85.128.47]:38352)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <h.talaiee@gmail.com>) id 1jpqu6-0000kU-C5
 for usrp-users@lists.ettus.com; Mon, 29 Jun 2020 06:20:46 -0400
Received: by mail-wm1-f47.google.com with SMTP id f18so15564859wml.3
 for <usrp-users@lists.ettus.com>; Mon, 29 Jun 2020 03:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Vcus5T6aigmccG5TuDPL2SXUQ8BnFBkam3CaAe70HfU=;
 b=poGH7TLQyi61gEqa/2prxMgenxSS+ilHpRO85+w9eFG/tBooxzMxbpCnApjyvETya7
 lcWclAJ/lPeGj1TL1KvWcJflH8H/8LLRZtXBS2CtrHtQS34U1w0gax2Bp/fQ9Hom01ZC
 1BbG2N5WTHseR1bFq7YrWV5LSzRZPWfalB+qztURuUDOkBmdnBXbWxrPZmCVlF8YU/q0
 mbBAJY37GIfdoBvCcoHOoRq+OJtV8eq9JWc5NL/z59PZMg861Q8+QVnF8gONhRxtGi0y
 DPp9No9GyN9DVTXiSnq9r7Zla4BnPOjqZC9NTzMqma/OrwxBDIbF2G4poiK59YbajlX1
 yfKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Vcus5T6aigmccG5TuDPL2SXUQ8BnFBkam3CaAe70HfU=;
 b=Y4qiwqYWjlJIQu956JVQAX58it+Ti6VUF41HYovpgeu/cwbFNO9d/uM3xkTfTWyoTY
 pr7KQP4ttIOfy7+rQWzhyuq4P4Sps7flSpHcZ1bywMx91rsmT1TtIddpTwgI0p73p1Ny
 lD0N0lYR6j7d8FucRrS5a8vtmv9AdmLyHd25m8eKK7Z7jq36wcyhJ0Be57wPwNCxJEWe
 JZE8R7hs6TEnzz1UewITS8MUPKJpGF9lzzL07pJdBf2IY6qXZI+fV1GwqoqKW+CDMlj3
 7NhDr6atGYR+IQGqGAWCUXnDU21Kh8Qp41DUYM1Tl/M+6E69m4PzFmN3XG7WCMRP872D
 SQiA==
X-Gm-Message-State: AOAM531Cz4axtjKMxkffzzOgs8DDD8Cuml6oXOeZMjZJsYUaT8mxDtLw
 owVM9Kfqx++VTE8kY5GfBExProAx3kY2tpM1cfij7mL73FE=
X-Google-Smtp-Source: ABdhPJw+0Ed5gdyzSnZKLZ2z2xIeJkGjr+lOpqFkPCSwxwNqhKyRXjpKgtdxMGW3uPmrGlRhHkH770cN0TOuWU90N1k=
X-Received: by 2002:a1c:6a01:: with SMTP id f1mr15586313wmc.52.1593426004929; 
 Mon, 29 Jun 2020 03:20:04 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 29 Jun 2020 14:49:55 +0430
Message-ID: <CAAiBEBTMR=Y1H3o3aMEy9cq6Y0OA21ua7xJvXaDRk-uQgdZGsQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Melbourne Users
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: hossein talaiee via USRP-users <usrp-users@lists.ettus.com>
Reply-To: hossein talaiee <h.talaiee@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi,

I there anyone from Melbourne ?

Best Regards

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
