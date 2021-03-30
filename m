Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A08534F3D6
	for <lists+usrp-users@lfdr.de>; Tue, 30 Mar 2021 23:57:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 409053838A5
	for <lists+usrp-users@lfdr.de>; Tue, 30 Mar 2021 17:57:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aLFricWz";
	dkim-atps=neutral
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 1E985383886
	for <usrp-users@lists.ettus.com>; Tue, 30 Mar 2021 17:57:03 -0400 (EDT)
Received: by mail-ot1-f45.google.com with SMTP id 68-20020a9d0f4a0000b02901b663e6258dso16971431ott.13
        for <usrp-users@lists.ettus.com>; Tue, 30 Mar 2021 14:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WYBNXgp2zMTbTmrY6GzKQPHjt7jtf1w+5n2oArmvrKw=;
        b=aLFricWzeNopGUe0q2hIitAPGKC3ECykH/VofuP5zOhjqFrnV9P64Sg2ozqBr5LU8Z
         ZSipx0COsynKKTx4O00pBR1Oq1tx+ieDWor3sDZGXYDVmvElUnDy9pXhZMiW2rdHUz0l
         KpIkS0gPAfYYj/uL8UZ/zvna41HAZJMGZY/sCuw5W+U93G6AzPWlc5ayy/Qhi61zrnLN
         aDTMktU0TZ7ULChPb04T27aAaiaJLM5nF2eTvHOGDcL9oxEH3NS4dkyQjkbISkQZarVm
         mKXJTVsQkXMz4kcoyPBXf6udLNs/aHEBb+pAFzZ178xAJMwPZ8DwY5PxnDh0sXZVVkr2
         SV0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WYBNXgp2zMTbTmrY6GzKQPHjt7jtf1w+5n2oArmvrKw=;
        b=LQuyGnFs5ef9pjVEDB2iAXuf/JosXAMO9G1JcIr5+ZZoCpNBsnQQvqK7nLPexbLtt4
         bVm4SADorFuEYp+HSLZrFec2mcVEtGwwM/ua2RMrxbfh9wAccfVPyDU77QV/vDad4X6l
         RekMY84uiM+O5NG2fgShkUHfriiWmXjUPINteU8iS94kfDDbwH/pQbMGKXY3oZTiHqJ/
         h2/p+9R3yEpc4/WUZHAgiTS4DEW851vDauW3ogmx1BfVdks4qYGI9dxJd1OLvLkIQ5r2
         u6429vPGp1E7axB6Soa4cH/EcLCE6P61Zha/yYXxT5ZUf2bEwfB5jwZWMg460XquKYAU
         S7cw==
X-Gm-Message-State: AOAM532lH0n+FFwGPxrlacAuDEgKPY4Yov6TfoqPnFSkoRnYqpryjHWj
	cTFY1jg8VXI5eoNbhlJlVPnEtHdH6Corc6ETEyY=
X-Google-Smtp-Source: ABdhPJzRgQqraVa/ZdrHjAcZh3FGUkL2vRhsk158zwExouMz+ZLJmL7jJQ9X/yVwn1DTadUbF0BmDcIAvSP1xX54rjw=
X-Received: by 2002:a05:6830:799:: with SMTP id w25mr29346ots.15.1617141423328;
 Tue, 30 Mar 2021 14:57:03 -0700 (PDT)
MIME-Version: 1.0
References: <09a52b1a9fd7467b857ab4a7e3c4427e@gtri.gatech.edu>
In-Reply-To: <09a52b1a9fd7467b857ab4a7e3c4427e@gtri.gatech.edu>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 30 Mar 2021 17:56:50 -0400
Message-ID: <CAEXYVK7orZPVgXAWrf1oT2Krw8_xecsF39Vat23k04x7r3P63A@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Message-ID-Hash: QF5DRNNPWTKQ3ZUOZRCL7MJQSUV7XSY2
X-Message-ID-Hash: QF5DRNNPWTKQ3ZUOZRCL7MJQSUV7XSY2
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC data_tready on AXI Bus
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QF5DRNNPWTKQ3ZUOZRCL7MJQSUV7XSY2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0957746582062618519=="

--===============0957746582062618519==
Content-Type: multipart/alternative; boundary="00000000000016d23c05bec814d4"

--00000000000016d23c05bec814d4
Content-Type: text/plain; charset="UTF-8"

The producer should always be producing when it can so push tvalid as often
as you want.

The data is only accepted by the other side by tready.  Don't wait for
tready to push tvalid.

Brian

On Tue, Mar 30, 2021 at 5:51 PM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On the AXI Bus, what is the the behavior of data_tready? Does it go low at
> the conclusion of each packet? If not, how long after de-asserting
> data_tvalid is it allowable to re-assert data_tvalid and begin another
> packet?
>
>
> Thanks,
>
>
> Jeff
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000016d23c05bec814d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The producer should always be producing when it can so pus=
h tvalid as often as you want.<div><br></div><div>The data is only accepted=
 by the other side by tready.=C2=A0 Don&#39;t wait for tready to push tvali=
d.</div><div><br></div><div>Brian</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 30, 2021 at 5:51 PM Hodg=
es, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-1351577509013592789divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p><span>On the AXI Bus, what is the the behavior of data_tready? Does it g=
o low at the conclusion of each packet? If not, how long after de-asserting=
 data_tvalid is it allowable to re-assert data_tvalid and begin another pac=
ket?</span></p>
<p><span><br>
</span></p>
<p><span>Thanks,</span></p>
<p><span><br>
</span></p>
<p><span>Jeff</span><br>
</p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000016d23c05bec814d4--

--===============0957746582062618519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0957746582062618519==--
