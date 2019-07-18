Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A7C6D28C
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 19:10:14 +0200 (CEST)
Received: from [::1] (port=55768 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ho9v0-0007V2-Dp; Thu, 18 Jul 2019 13:10:10 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:37913)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1ho9uw-0007Mb-8y
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 13:10:06 -0400
Received: by mail-ot1-f42.google.com with SMTP id d17so29863749oth.5
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 10:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H7ZjgeiZr4hrMhRHVNO2oIvHEYSwitLbfiwY1Bo0C2E=;
 b=mgOEb5oVjAlsubRpIRfQs90RTWun82yyDQJw4h4dcPkTmPQm3g+BXX96Qi87Gt7p1D
 99VSJdn2/G5IW/YIYasAKpONWkIxoWCg9Spahg4yWgrjbC1R27aQWEiPG9l1INwMNVv/
 UBdZ0ECrzd41dSkra+k+BXTSRaOw91j9jx+pusxnXL3rvzLPKX1fkREMgg5Ey/PXLmM3
 RBs/QRuDX/sxfYW9jP0KugJSLAK88Q9VnFutNJ9E5tYBo59hB7jpQQIYghMYsFznc9hH
 PVF84Tc/rT7DUx4C2g9FqK9PZdWY3TLl63YmlohaNhnNCxxYwCS5104m89Zc7TTbzCV+
 oIBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H7ZjgeiZr4hrMhRHVNO2oIvHEYSwitLbfiwY1Bo0C2E=;
 b=irfCcT5r+fzlAQdpsjRMwn/pYAgtTHDqFejVhAiMGNeLFB9pqiSloBZPKFz/ja51L6
 L+mZ2bEwpihVyc98jTE/3AcYLHNd1t6VOWLgphoM9jrbBd5XbjvoppDD6aSBW+WyUvW0
 33xNBLflRvz2dz/Qu/NJMOP6tIP3zszru8GFzdsEk5vBk90Vod3RUfQlNkqJZ6ppu5Cq
 /XGiZt17FegBOubpMJvP8suo4nUNETLcvj1tqvk69IW+T5fqhHncAQeoyNX2BLL13dJ9
 AqtzFZ2uIq7wtpnpO8KVR1IERCQ0c0UC6l+ct/dNShKv6iEnZOB6rNLltaOMMM2+sYWz
 fmbA==
X-Gm-Message-State: APjAAAWaWT6jBEwDS132lXxg+Quky/I2X6jmv1MIGL4OnpxwfAtQHjui
 Bt9G2Beubs5PBBi9Z2Uu2ZDpP108/Tkpm8oRtXtjKiBtMFkphA==
X-Google-Smtp-Source: APXvYqysz5CMDSc8zXCy4zWHcFx8wR5jxSpL7t1koZ/HMrDK/73RtCaWxxvX7bf7Vnf6Clalx74QhCSh4geaCe0KhzI=
X-Received: by 2002:a05:6830:160c:: with SMTP id
 g12mr37209972otr.231.1563469765621; 
 Thu, 18 Jul 2019 10:09:25 -0700 (PDT)
MIME-Version: 1.0
References: <3d28bc6e-1f89-f7dd-f507-7c1f65865c16@eit.uni-kl.de>
 <CAL263iz_HaODktCA9=Ham5wXQgB=-MsrxXSgzfdTM1EwqHmDKA@mail.gmail.com>
 <6EABBFAB-F129-4E17-9C7C-41021CE13E0C@opensdr.com>
In-Reply-To: <6EABBFAB-F129-4E17-9C7C-41021CE13E0C@opensdr.com>
Date: Thu, 18 Jul 2019 10:09:43 -0700
Message-ID: <CAL263ixON0xWF0U1Oi6FsX+uYnyJLds6rF4L3wCjNO1o7Xp3Ng@mail.gmail.com>
To: Philip Balister <philip@opensdr.com>
Subject: Re: [USRP-users] USRP E312 configuration
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: Andreas Weinand <weinand@eit.uni-kl.de>,
 Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3861045557970686468=="
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

--===============3861045557970686468==
Content-Type: multipart/alternative; boundary="000000000000ff4c41058df7ab9c"

--000000000000ff4c41058df7ab9c
Content-Type: text/plain; charset="UTF-8"

Hi Philip,

We will be updating the kb.ettus.com application note when it is ready.

Regards,
Nate Temple

On Thu, Jul 18, 2019 at 10:03 AM Philip Balister <philip@opensdr.com> wrote:

> Why not post the instructions to the list and save people a bunch of time
> getting to this point?
>
> Philip
>
>
> On July 18, 2019 7:00:01 PM GMT+02:00, Nate Temple via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>>
>> Hi Andreas,
>>
>> The errors you see when loading the idle FPGA can be safely ignored and
>> are fixed in the new MPM based file system.
>>
>> We have a pending update for that application note that uses modern UHD
>> that will be posted soon. I can follow up with you off list with the
>> instructions for now.
>>
>> Regards,
>> Nate Temple
>>
>> On Thu, Jul 18, 2019 at 9:36 AM Andreas Weinand via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hello,
>>>
>>> has someone already sucessfully made the E312 running using RFNOC
>>> scripts? like in the example in
>>>
>>> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
>>>
>>>
>>> Unfortunately, i got the similar errors when following these
>>> instructions as reported here before (e.g.
>>>
>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-March/056028.html
>>> ). I tried a lot of OS, UHD, gnuradio and gr-ettus combinations but all
>>> ended in some errors like this earlier or later.
>>>
>>> I am currently trying with Ubuntu 18.04., if anyone has a working setup,
>>> please let me know. Other OS are also fine for me.
>>>
>>> BR
>>>
>>> Andreas
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
> --
> Sent from my Android device with K-9 Mail. Please excuse my brevity.
>

--000000000000ff4c41058df7ab9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Philip,<br><br>We will be updating the <a href=3D"ht=
tp://kb.ettus.com">kb.ettus.com</a> application note when it is ready.<br><=
br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 18, 2019 at 10:03 AM Philip Bal=
ister &lt;<a href=3D"mailto:philip@opensdr.com">philip@opensdr.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Why =
not post the instructions to the list and save people a bunch of time getti=
ng to this point?<br><br>Philip<br><br><br><div class=3D"gmail_quote">On Ju=
ly 18, 2019 7:00:01 PM GMT+02:00, Nate Temple via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0=
pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Andreas,<br><br>The errors you see when loading the =
idle FPGA can be safely ignored and are fixed in the new MPM based file sys=
tem.<br><br>We have a pending update for that application note that uses mo=
dern UHD that will be posted soon. I can follow up with you off list with t=
he instructions for now. <br><br>Regards,<br>Nate Temple</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 1=
8, 2019 at 9:36 AM Andreas Weinand via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,=
<br>
<br>
has someone already sucessfully made the E312 running using RFNOC <br>
scripts? like in the example in <br>
<a href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Bui=
lding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source" rel=3D"noreferrer" targ=
et=3D"_blank">https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_=
Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a> <br>
<br>
<br>
Unfortunately, i got the similar errors when following these <br>
instructions as reported here before (e.g. <br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018=
-March/056028.html" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus=
.com/pipermail/usrp-users_lists.ettus.com/2018-March/056028.html</a> <br>
). I tried a lot of OS, UHD, gnuradio and gr-ettus combinations but all <br=
>
ended in some errors like this earlier or later.<br>
<br>
I am currently trying with Ubuntu 18.04., if anyone has a working setup, <b=
r>
please let me know. Other OS are also fine for me.<br>
<br>
BR<br>
<br>
Andreas<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br>-- <br>Sent from my Android device with K-9 Mail. Pl=
ease excuse my brevity.</div></blockquote></div>

--000000000000ff4c41058df7ab9c--


--===============3861045557970686468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3861045557970686468==--

