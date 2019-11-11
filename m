Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABFFF72B0
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2019 12:02:05 +0100 (CET)
Received: from [::1] (port=43270 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iU7SL-0002mE-Lt; Mon, 11 Nov 2019 06:02:01 -0500
Received: from mail-lf1-f53.google.com ([209.85.167.53]:36386)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <anabel.almodovar@gmail.com>)
 id 1iU7SI-0002hf-OW
 for usrp-users@lists.ettus.com; Mon, 11 Nov 2019 06:01:58 -0500
Received: by mail-lf1-f53.google.com with SMTP id m6so9514221lfl.3
 for <usrp-users@lists.ettus.com>; Mon, 11 Nov 2019 03:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=TWMnbq/2f1kCh+JPzBSlj1VFtlWE8BTpyAZOzOgsFWg=;
 b=OyfOhWEMOI4mbR8XOOd9LlFinafTBextw64Oy5YL96gnOujxJNwlpsw/9ZD/iiRv3U
 gV4fF0PAyCs/RNESOYtdgIcQGHEeWqyvOXkOjI7rObIBv2tJPKGb0u62j6KyRKZLJKIh
 gq9ASio9Z2wRd1R5+OmujZNzma912TAnNLTsQrZoO8rKkbB1InjeinWkvhA5RWXA8qwA
 JPof97W2ZD+1Ua6EVM60k1GgQ7worNdkZrmLMWPW1Vwe8AQZ+2yQpqYABzMtu/+DG9rc
 BqCeianrvgD+K0fH8i3dAm3/juP4xEMFJeLImFNArcUePfzfK7yuRln18dllOnHzV0op
 N06A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=TWMnbq/2f1kCh+JPzBSlj1VFtlWE8BTpyAZOzOgsFWg=;
 b=UdXKF+tdZn0WOhPDU4oC8M22F16O8Z7XCjSlIHjDTPMStfHe8UAO4UiKv0cSTrLkvs
 CGrLwiSSkx/wDDM+SeuNFkiluSZ0uU/68abcsW2BOsQ4QC1iB2XEJ7DpLqjgg6OwWRcF
 E6wjHpS+yT6wrNdvLObO38Wna/cBKvZYBHFeiu4b00qHIsinMFnvuwnpHztBlxu8BwAC
 ZnpWHj8sXd49SB0oMRSg7c+obxTFdySqLyv8AxjErt+TKomrTlzuDOxem5lCnXIwy7gy
 0rST0yZ+XZjMvXamR3ukR69uGkzGLD/Kh7iAma/bEswL6BQExKhipW93kYWfpT41RTq0
 q99w==
X-Gm-Message-State: APjAAAVnH3fxw8pQHWpIX5vqGa8R+8IEXTpUeuF5P3s+fKMU/GX1BcjK
 UmZrPxLNHlW8h5HWyWwIqc/AgpW4/dm91wiL79CTCWLm
X-Google-Smtp-Source: APXvYqylfVie1gYDmMAB67n9rQMFAw0X+hzc7klyjuy7ixgq+3cQuv5q8wxolCDrHo7xniLZC6K2wtMOS43yXMFG6NU=
X-Received: by 2002:a19:41d7:: with SMTP id
 o206mr15092045lfa.188.1573470076923; 
 Mon, 11 Nov 2019 03:01:16 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 11 Nov 2019 12:01:05 +0100
Message-ID: <CAFPzw1nnhxhioT1_dt0X9NgjAwbvPfEc2fjURg4ywOid1Vjt3Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Record in disc 4 channels in continuos mode
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
From: Anabel Almodovar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anabel Almodovar <anabel.almodovar@gmail.com>
Content-Type: multipart/mixed; boundary="===============8734760104933737063=="
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

--===============8734760104933737063==
Content-Type: multipart/alternative; boundary="000000000000fff2e80597100c9c"

--000000000000fff2e80597100c9c
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to make a continuous acquisition with an ettus x310 card whose
daughter boards are TwinRx. I have used as a base the example
"rx_samples_to_file.cpp" and I have modified it to be able to acquire
continuously with the 4 available channels. However, this gives me an error
and saves a lot of zeros even though I don't get the overflow error. By
testing the unmodified example I also get those zeros.

Could someone tell me why this happens? How can I solve this error and save
the acquisition continuously on disk with the 4 channels?

Thank you in advanced.

Regards,
Anabel

--000000000000fff2e80597100c9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span class=3D"gmail-tlid-translation gmail-translati=
on" lang=3D"en"><span title=3D"" class=3D"gmail-">Hello,</span></span></div=
><div><span class=3D"gmail-tlid-translation gmail-translation" lang=3D"en">=
<span title=3D"" class=3D"gmail-"><br></span></span></div><div><span class=
=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><span title=3D"" =
class=3D"gmail-">I am trying to make a continuous acquisition with an ettus=
 x310 card whose daughter boards are TwinRx.</span> <span title=3D"" class=
=3D"gmail-">I have used as a base the example=C2=A0 &quot;rx_samples_to_fil=
e.cpp&quot; and I have modified it to be able to acquire continuously with =
the 4 available channels.</span> <span title=3D"" class=3D"gmail-">However,=
 this gives me an error and saves a lot of zeros even though I don&#39;t ge=
t the overflow error.</span> <span title=3D"" class=3D"gmail-">By testing t=
he unmodified example I also get those zeros.</span> <br></span></div><div>=
<span class=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><span =
title=3D"" class=3D"gmail-"><br></span></span></div><div><span class=3D"gma=
il-tlid-translation gmail-translation" lang=3D"en"><span title=3D"" class=
=3D"gmail-">Could someone tell me why this happens?</span> <span title=3D""=
 class=3D"gmail-">How can I solve this error and save the acquisition conti=
nuously on disk with the 4 channels?</span></span></div><div><span class=3D=
"gmail-tlid-translation gmail-translation" lang=3D"en"><span title=3D"" cla=
ss=3D"gmail-"><br></span></span></div><div><span class=3D"gmail-tlid-transl=
ation gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-">Than=
k you in advanced.</span></span></div><div><span class=3D"gmail-tlid-transl=
ation gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-"><br>=
</span></span></div><div><span class=3D"gmail-tlid-translation gmail-transl=
ation" lang=3D"en"><span title=3D"" class=3D"gmail-">Regards,</span></span>=
</div><div><span class=3D"gmail-tlid-translation gmail-translation" lang=3D=
"en"><span title=3D"" class=3D"gmail-">Anabel<br></span></span></div></div>

--000000000000fff2e80597100c9c--


--===============8734760104933737063==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8734760104933737063==--

