Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 06ABB4E32D4
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 23:45:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EEF76385310
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 18:45:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="4p7FYEpO";
	dkim-atps=neutral
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 7F8F53849A0
	for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 18:44:33 -0400 (EDT)
Received: by mail-yb1-f170.google.com with SMTP id j2so30798045ybu.0
        for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 15:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JrWYALK4jcX+c35ty1RuOC5q7OiGnAtqobn1GPEPOzc=;
        b=4p7FYEpOletnM3wKI62/yJ/NxAHKv6udlFSTQ8VPe+b1/r7QZoacfChKhqHZrWCVzg
         oJLo1QfxwnnwR+49GFtxe13YXHbCdlrx0bVsQS5plfcps3gJIaut3w8JFqSZHtoT4V+a
         4p9M70ruoXas0QAKBFHTeioh6jDIMp0cWYdT7FK7TvTn+o7dVnlY2Poj+3OrmXywa8g2
         lFKK711HebNE/9KBnSCugD03EyRLpPrSkbYwovGNook6DdXl33IkOY6Ygq2grINSXDXZ
         oZ4huEnNgkFvB7kxHZITaFyZfqNcMrZYlsu2FZZsMBTe5g5xz0J+KOZV5k8Z0Wl6yt6i
         3Sjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JrWYALK4jcX+c35ty1RuOC5q7OiGnAtqobn1GPEPOzc=;
        b=DJUWWEQK1IEO7oZ3zICxswo0a4IdykGyucwpsUrIFYhuzV4p8Fa12kc/HE2HZ38qcC
         6O9TRuz6m0Occ+J9Uj/Yh49gueYB3eJcd3zn6Pd4rCPv89GE/ihFEYQfy2vS7M8Gnd3r
         3qTt9/8nhRM9D0Dm3EEwo0wzPTF5S1UbRTQN8gg8xyplkNMxvSpJrQ/4UE7C1mAxsM1C
         KRrVBIHqywmFjHBthtEy3twbFFSFrHGNan3JFI8MYVLP1HsQJsCcPwte5BJyKal9fqHN
         SDFztTM7uX5b8sHq4E61u9MORwoP4vZEi1WLob0bLrt5hRaeORjEzoCyqFbwa0nHYycy
         IzgA==
X-Gm-Message-State: AOAM530F/nz7rW7iqkBkStIkSX4NSJi51UsNDV2qclHXXFiPSEYNkrHP
	rUid1vXzcEFG8VqpeeBrBaP2NJaF+IcpHBSktM0hcd5V
X-Google-Smtp-Source: ABdhPJxFtEAHD0xKddqfOPQ8hk0l8B9PIZ1bBiaHvq2TVDmagtKOWwWHc2Y+TgDVYn00kjddXWM34mHaODPPu0Ci1x8=
X-Received: by 2002:a25:b8c7:0:b0:633:cc7b:b8dd with SMTP id
 g7-20020a25b8c7000000b00633cc7bb8ddmr14000240ybm.429.1647902672913; Mon, 21
 Mar 2022 15:44:32 -0700 (PDT)
MIME-Version: 1.0
References: <AM8P250MB010775DAB5F976813E57AE599B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <77C9127F-86E2-4BC0-9ED0-C477B0F4A586@gmail.com> <AM8P250MB0107FE3596073DF1E741B7D89B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <a71545cc-5423-7bb4-e616-a261dd065fbd@gmail.com> <CAB__hTRYBFJ_Wkucxz=XLScaVV53DE_R63caFZtSTfQYzUVpTw@mail.gmail.com>
In-Reply-To: <CAB__hTRYBFJ_Wkucxz=XLScaVV53DE_R63caFZtSTfQYzUVpTw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 21 Mar 2022 17:44:17 -0500
Message-ID: <CAFche=g=yhcgNfbieDmQC4CJooniGi5vc6ZU2oXSF_TqkKJF6Q@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: IQC7SPWZKCU7GBLDIL7YKODX76P5G6M6
X-Message-ID-Hash: IQC7SPWZKCU7GBLDIL7YKODX76P5G6M6
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X410] Change hostname
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IQC7SPWZKCU7GBLDIL7YKODX76P5G6M6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4975807274168538560=="

--===============4975807274168538560==
Content-Type: multipart/alternative; boundary="00000000000071a06205dac23db0"

--00000000000071a06205dac23db0
Content-Type: text/plain; charset="UTF-8"

Hi all,

You can change the hostname by creating a file /data/network/hostname with
the desired hostname.

On boot, systemd runs /sbin/usrp_hostname to configure the hostname. It
looks for the /data/network/hostname file. If it doesn't find it, then it
uses a default with the serial number.

Thanks,

Wade

On Mon, Mar 21, 2022 at 5:11 PM Rob Kossler <rkossler@nd.edu> wrote:

> perhaps in the file /data/network/eth0.network?
>
> On Mon, Mar 21, 2022 at 10:43 AM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2022-03-21 10:34, Tobias Kronauer wrote:
>>
>> There is no /etc/hostname in /data....
>> ------------------------------
>>
>> Hmmm.
>>
>> According to:
>>
>> https://files.ettus.com/manual/page_usrp_e3xx.html#e31x_migration
>>
>> You should be able to just modify /etc/hostname, but this doesn't work
>> across reboot.  Even on my E310.
>>
>> Clearly, *something* is reconstructing it on reboot, I just can't
>> immediately determine exactly what.
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000071a06205dac23db0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>You=
 can change the hostname by creating a file /data/network/hostname with the=
 desired hostname.</div><div><br></div><div>On boot, systemd runs /sbin/usr=
p_hostname to configure the hostname. It looks for the /data/network/hostna=
me file. If it doesn&#39;t find it, then it uses a default with the serial =
number.<br></div><div><br></div><div>Thanks,</div><div><br></div><div>Wade<=
br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Mar 21, 2022 at 5:11 PM Rob Kossler &lt;<a href=3D"=
mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">perhaps in the file=
 /data/network/eth0.network?</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Mar 21, 2022 at 10:43 AM Marcus D. Le=
ech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchv=
onbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-03-21 10:34, Tobias Kronauer
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        There is no /etc/hostname in /data....<br>
      </div>
      <hr style=3D"display:inline-block;width:98%"><br>
    </blockquote>
    Hmmm.=C2=A0=C2=A0 <br>
    <br>
    According to:<br>
    <br>
    <a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e31x_migr=
ation" target=3D"_blank">https://files.ettus.com/manual/page_usrp_e3xx.html=
#e31x_migration</a><br>
    <br>
    You should be able to just modify /etc/hostname, but this doesn&#39;t
    work across reboot.=C2=A0 Even on my E310.<br>
    <br>
    Clearly, *something* is reconstructing it on reboot, I just can&#39;t
    immediately determine exactly what.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000071a06205dac23db0--

--===============4975807274168538560==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4975807274168538560==--
