Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FF24E3294
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 23:11:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3231B384F6A
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 18:11:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Ftj6wBy6";
	dkim-atps=neutral
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 6A13B3849A8
	for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 18:10:48 -0400 (EDT)
Received: by mail-yb1-f169.google.com with SMTP id l2so30568710ybe.8
        for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 15:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wmeqbtDOPN1XZoLWqqapx6XUtXpb3beyjeWgV8Su+ic=;
        b=Ftj6wBy60XaNBJdKe8PuSB+KVOndB3kp2FzGXr+TNOFTYZgW9yKtc3PmFSG4ZtYRpt
         DXrwloNPDGShBFmtnZTMcGNWbRb+bqGRJLzcQqFBIRU2jPbJ138mm837Q6KL16AjDUNG
         VSZsvCO2XIpkvjK2SXNTM8uHChhkYOWTN3FwWz54GOF/39V4z97aZCYGau9XG4sdtQxo
         FfSCPbAkj3cuvreUhH1yV6wZA5toUDmQeIyAZj8Hk2TJ9Yus7HnX1llZBpdWI8st31Vz
         70JAYphYGBqylHsf38sJpK+2Of4uKUd2wOJLuJW4YMeJH7eeL0y6tvGnqRfhyHdLI+GY
         8K+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wmeqbtDOPN1XZoLWqqapx6XUtXpb3beyjeWgV8Su+ic=;
        b=AfNtUE3mtX6mM9xtGOnBhEfQsTZ1t2Sq+kFBlBvoh9NxICt8Sp8bQR1yRtlfgYxchh
         g4DNq6hwg0joF19mh1yp9SAfZpGB4A7iVz12Dst/O1rm5soggdqb87kVmQAOREjiSXXC
         HPwrsK2bSoS8CdXvWQKgr1Q8h37EcXqvHddgd6gy/k4m5n35OwZ2ZYbCKX+irioee6I8
         9UISUyW9eW9PdU5OSH1j0si0wt88GXHNkv5Uik2QXC1oUQpfyTQpHnq+lVYaMHTdCePm
         zMxwpZaR9X99bwrlzohEO22kRZYUiu2Fl9mQF+7UZ4A6bKlRy9sKyXQ0pbKAWbxOhVQ7
         NY6Q==
X-Gm-Message-State: AOAM532EcE/Zia6zgZ5oR442Kj8wg4pntOoKM5KprQIGqOwf2plYTRyR
	J3zNa2ggmhWVVu9IOwANiWO0Y6k7NO95TvbWWErLqA==
X-Google-Smtp-Source: ABdhPJw+5SURc/HwewUWAZ86D2QLQ4U+YN89j69XhDjDlULBw9xUzx1Riy0uvCZv0FJX+Xyfb0QnqarsUa7eyPdDAF4=
X-Received: by 2002:a25:b991:0:b0:610:bf4e:1b33 with SMTP id
 r17-20020a25b991000000b00610bf4e1b33mr24712516ybg.352.1647900647470; Mon, 21
 Mar 2022 15:10:47 -0700 (PDT)
MIME-Version: 1.0
References: <AM8P250MB010775DAB5F976813E57AE599B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <77C9127F-86E2-4BC0-9ED0-C477B0F4A586@gmail.com> <AM8P250MB0107FE3596073DF1E741B7D89B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <a71545cc-5423-7bb4-e616-a261dd065fbd@gmail.com>
In-Reply-To: <a71545cc-5423-7bb4-e616-a261dd065fbd@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 21 Mar 2022 18:10:36 -0400
Message-ID: <CAB__hTRYBFJ_Wkucxz=XLScaVV53DE_R63caFZtSTfQYzUVpTw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 62DE3T5LQHPSUZCOXAPLBWN46UK6LXDG
X-Message-ID-Hash: 62DE3T5LQHPSUZCOXAPLBWN46UK6LXDG
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X410] Change hostname
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/62DE3T5LQHPSUZCOXAPLBWN46UK6LXDG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0367465388443567707=="

--===============0367465388443567707==
Content-Type: multipart/alternative; boundary="000000000000b811a205dac1c491"

--000000000000b811a205dac1c491
Content-Type: text/plain; charset="UTF-8"

perhaps in the file /data/network/eth0.network?

On Mon, Mar 21, 2022 at 10:43 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-03-21 10:34, Tobias Kronauer wrote:
>
> There is no /etc/hostname in /data....
> ------------------------------
>
> Hmmm.
>
> According to:
>
> https://files.ettus.com/manual/page_usrp_e3xx.html#e31x_migration
>
> You should be able to just modify /etc/hostname, but this doesn't work
> across reboot.  Even on my E310.
>
> Clearly, *something* is reconstructing it on reboot, I just can't
> immediately determine exactly what.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b811a205dac1c491
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">perhaps in the file /data/network/eth0.network?</div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar=
 21, 2022 at 10:43 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@g=
mail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
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

--000000000000b811a205dac1c491--

--===============0367465388443567707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0367465388443567707==--
