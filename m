Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CB8660BB
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jul 2019 22:35:26 +0200 (CEST)
Received: from [::1] (port=54210 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hlfml-0000Cz-Cc; Thu, 11 Jul 2019 16:35:23 -0400
Received: from mail-yw1-f51.google.com ([209.85.161.51]:34087)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mikedon1@gmail.com>) id 1hlfmg-0008Hm-10
 for usrp-users@lists.ettus.com; Thu, 11 Jul 2019 16:35:18 -0400
Received: by mail-yw1-f51.google.com with SMTP id q128so4383309ywc.1
 for <usrp-users@lists.ettus.com>; Thu, 11 Jul 2019 13:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=zC1AC08LghuJ+qHIb2UyEKoGUjbTGHY60N2OtCsCl38=;
 b=EczaPHWjGpWJLnbMUBprn331pqG9maZNja6LMWXIK65HlbFXRdMwlO8vEfeXzyF6Fp
 OpN6aQsj7qxL9aEJRIXmjp7QncjRPpuG2u04QXtxF72t5x1Wo/qgxC6UgIPoXlkShdR3
 HjkSuou8lKRz+lRVY1/mOrc2I3jaP63g9wNJVqbPVP2h5v+gYmFULpVO+c9xG7469oBN
 pHaUjE9zi9zHYotLGsBGj1Z1XWih+qPTgQqx15dPbWoWMxZShjzCdDtT/gNKquxsbYBU
 SARZua99B3zRiZSVel+h4QxvDvoCRoI6aiclX4WDbgJUOoLSXh8y1h6hxNu49VezeCuc
 mxEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=zC1AC08LghuJ+qHIb2UyEKoGUjbTGHY60N2OtCsCl38=;
 b=iCShOZDycBe5Zgbfe+JtI/+FpjMuJ+2AwGExH8elESqRh+obtioElX/4ucYT3hHQ/N
 L8Dc0yrC3sMrJCOa8HbmUzOvv2qqfUmK6Qlsb6dhS6kzuWqRIN/9+4rJ77Pmx/Kf9bVh
 uRjr7wUO2TDR+MiHKBSws3ILa5nsd/zLjWEr0fhnIIzUbn1LLkrc18PyNNBAJPxp0k/t
 Ym795ML4yrb/UuXNWm0CiIl3r3zKyUIE81ykk8BpB4TBZZJzrPSIV70T44WEA2B5+dCk
 1WwTTh1975M4KGYZ2UWwBeXKK8R0OUZhZ78XRu+nrtm3uNjO0Jp+N2Ffqssyn0O9QLPg
 GyMQ==
X-Gm-Message-State: APjAAAUj5fRfcPwa1nyzHDeSPmAsi/PtZ8/BGHmPg8tpgYbnvjw4LW0f
 aQpj4GTrV2ehsui5Ko3p6p9cKgxOKuhEMQjdGi1iioqK
X-Google-Smtp-Source: APXvYqzEjGMV33QP9AdiHymmZmC3XnwVBB7XrTj3meI5B5ZB+lByoDObQoMvqU5uOjDY9k/KyH88faEv3JOBPTtFA0I=
X-Received: by 2002:a81:a491:: with SMTP id b139mr3660488ywh.148.1562877274899; 
 Thu, 11 Jul 2019 13:34:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:9982:0:0:0:0:0 with HTTP; Thu, 11 Jul 2019 13:34:34
 -0700 (PDT)
Date: Thu, 11 Jul 2019 16:34:34 -0400
Message-ID: <CAFTvvjP6==EsAqLiEW0RKE5j1-oADxQEGCKX=FNmss-Bq1jm5w@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] rx error code: 1
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
From: Michael Don via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Don <mikedon1@gmail.com>
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

I have 2 E312 units.  On one I have a gnuradio script that works fine.
I cloned the sd card from the first E312, and put it on the second
E12, and am getting the following error:

WARN: USRP Source Block caught rx error code: 1

Is this some sort of hardware problem, since the 2 systems have
identical software?  Anyone know what rx error code: 1 means?  Any
suggestions on how to fix this?

Also, while playing around to try to fix this I'm pretty sure I set
the rx gain to 50 on one of the units, and got the "rx error code: 1"
error, and reduced the gain, and the error went away.  On the unit
that is currently failing, I set the gain to 0 and still get the
error.  The unit that's working has the gain set to 25.  I thought the
max gain of the E312 was 76, not sure what's going on here.

-Mike

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
