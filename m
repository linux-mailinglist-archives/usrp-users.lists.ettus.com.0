Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B02538DCF
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 11:34:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84A6A383FA5
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 05:34:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653989692; bh=5QABEaAQVEAvwNe0+nx/4TO2VNgg0Fk+KB8vWctKuC4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DPctDbtgr10kYccCzJ9yO2y0syv0FEc2V05aL4ZKOTA3BfjqwxkMhtLzBGob0A7+H
	 r9o2r5PDyOMxbKeNznYIj3y53cLh5GxwQZhnlC+bfYQueloEcUIk03CV7+xlUanmap
	 yXt2AIaw7qMAWSWvn2xnZZSJ90zm1fcseCopE324atjm6lqol1XE8fmQbhjJjZ7rqJ
	 x+CG9zhll0i0d+1JXmZzKbkqHN1fYuPe0K48f8mVm/ePZgMfkMsGIyO3dNrwgH5TGY
	 OkJ5N+TrG3LgIT2S/KKIuRlJ33fMu4c+WFYuY1WeIHNqD9WHREvlIxSsLDtLDEKidF
	 8/CKN3SmX+2fQ==
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 2E512383C7D
	for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 05:33:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="Pdx61eif";
	dkim-atps=neutral
Received: by mail-il1-f180.google.com with SMTP id h18so3083045ilj.7
        for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 02:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=Z3rWOVHi1EGElYodY0pCr8RNsNZygA1OAWvRCkV2Xrk=;
        b=Pdx61eifEAh4GZ045kZZeLo7GNOCxRhLJYcKzfLNfPjrr8miH36OQ6+UtHpgdxAI7H
         JZzh39tOsxJQQOf+c8oqeuvmEcTGxyt0KcxkV8PNDxJtLrU4efICzKGcOodTa+uReqVe
         eN5qDJ2u1/KT42ya5azjIQwfMCszX/+P/5Bw47JGKr6DQYoKihfA3dJkBS1LitQZ/kY4
         KuJd8rX9o7FVFUNljt69uUo3m+3y4otT5I7Vy5Km4ymhT8vqp7kybOWqMCQcvgx9MBgO
         4+Pu+r0obOuqgkrkQLRiHaFu5VL9SpLwOVVS4hY+Aj9lgLfLX+FN/TMxqOd7XxjTWlRm
         Z2wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Z3rWOVHi1EGElYodY0pCr8RNsNZygA1OAWvRCkV2Xrk=;
        b=jAWU5Ght6utNvacTzgVtOd6aUflEHK4As0pEbAxkJ0iGJtdWUWx9c2hTWNI956x3ry
         ci3a2srPfXo9GKCo36OjLwqgOoY/Ycbqx+v8WxCnXljeTB4+VVeNsXa9NwT3/oGo+eFv
         ymafHaVoZSSE9Lo+wirfLeG/HWR5KGVaNUtoUWlGtD5+eBKZ80xM5I9T9Otw8PU3NdkP
         yLN8f4n5hqeOpe8a2tVu83rXiLAYGAUvs9yv2qWZ4qhv5vO565R2+Waaml7nYGopa555
         /p1YUehusqpMX2nLSSV3iCkGY3OgI14Xagpc1kJPYfZdK9tCj+TwjlP3SPwYEEOXfU6y
         gdlA==
X-Gm-Message-State: AOAM530MJ6ZDTe1v1uuGywupFHLS8Lph7TMt8EiNq2o0UR4Ip5vS6GLz
	kAtLbBi1kAiqZQS24tBlersSV2PzL7DySPdCAAgBFejJutwAyqZ6
X-Google-Smtp-Source: ABdhPJwcW8ZX+1rNa2q2WR73wTYmPJwtn2iai4rywwZVSyHLvicwhiej3j5UN40wQG2tTysI3/a2ixznx22ZAl9R31s=
X-Received: by 2002:a05:6e02:1baf:b0:2d1:c76f:47a0 with SMTP id
 n15-20020a056e021baf00b002d1c76f47a0mr19488120ili.134.1653989624221; Tue, 31
 May 2022 02:33:44 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Tue, 31 May 2022 04:33:00 -0500
Message-ID: <CACaXmv8nncXf3vQMBC4VzKDnm6r2T-DH7oifKYdnHkE7v92qHA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: DBHPJNWPLXKABBCPMMANJZLDNJNUMBKA
X-Message-ID-Hash: DBHPJNWPLXKABBCPMMANJZLDNJNUMBKA
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reminder -- NEWSDR -- This Friday June 3
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DBHPJNWPLXKABBCPMMANJZLDNJNUMBKA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4881058554213615447=="

--===============4881058554213615447==
Content-Type: multipart/alternative; boundary="00000000000003a7a705e04b78af"

--00000000000003a7a705e04b78af
Content-Type: text/plain; charset="UTF-8"

*** NEWSDR is coming this Friday June 3 ***

The 12th annual New England Workshop on Software-Defined Radio (NEWSDR
2022) will be held this Friday (in 3 days)!!

Please see our website for more information about the agenda.
https://newsdr.org/workshops/newsdr2022/

Today is the last day to register!!

Please register here:
https://forms.gle/CEbSFtaxBu8iARo87

Please join our Slack workspace:
https://newsdr.org/ways-to-connect/

--00000000000003a7a705e04b78af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">*** NEWSDR is coming this Friday June 3 ***</font></div><f=
ont face=3D"verdana, sans-serif"><br>The 12th annual New England Workshop o=
n Software-Defined Radio (NEWSDR 2022) will be held this Friday (in 3 days)=
!!<br><br>Please see our website for more information about the agenda.<br>=
<a href=3D"https://newsdr.org/workshops/newsdr2022/">https://newsdr.org/wor=
kshops/newsdr2022/</a><br><br>Today is the last day to register!!<br><br>Pl=
ease register here:<br><a href=3D"https://forms.gle/CEbSFtaxBu8iARo87">http=
s://forms.gle/CEbSFtaxBu8iARo87</a><br><br>Please join our Slack workspace:=
<br></font><div class=3D"gmail_default" style=3D""><font face=3D"verdana, s=
ans-serif"><a href=3D"https://newsdr.org/ways-to-connect/">https://newsdr.o=
rg/ways-to-connect/</a></font></div><div class=3D"gmail_default" style=3D"f=
ont-family:verdana,sans-serif"><br clear=3D"all"></div></div>

--00000000000003a7a705e04b78af--

--===============4881058554213615447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4881058554213615447==--
