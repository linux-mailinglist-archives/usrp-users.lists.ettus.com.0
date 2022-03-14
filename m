Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A274D88BC
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 17:03:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5AB2538419D
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 12:03:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="q88SUmU6";
	dkim-atps=neutral
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 0EE3B38419D
	for <usrp-users@lists.ettus.com>; Mon, 14 Mar 2022 12:02:19 -0400 (EDT)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-2dbc48104beso169466417b3.5
        for <usrp-users@lists.ettus.com>; Mon, 14 Mar 2022 09:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KCr7Pu9NyvrxatnOR30eR+3V+5QMT3KTMYd4oBSzylY=;
        b=q88SUmU684myP1miQG9SuClQdDCgzJ14aecP0zTTZciJxZL3SEJ4eiechUWW9vMFH0
         Cb3C7PROr/MJrmbiN5enKXX8ZjNAShf8DEmw27aNXuwnHdzXUDXBth3Yr7qal4lmkIYm
         J13RLsCamFz9tmJ490R8SsKLj6bD0DVKrr/59UENbX3fLEmkngspm/9x+1Y9yxSJ1XZA
         ytYMsuS54DMZHCKuUctKRpVjzb13+tSn/Uk1CQGH6R5o1IM459JM3D+ShBbD3gu5iq2O
         EG4ABAEr/dMLNTQwaMfZ1jPb2xsGgsclbqJpb/nm9VxvI5zgIUONRdSG1GeGAwDnkV8Z
         B6Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KCr7Pu9NyvrxatnOR30eR+3V+5QMT3KTMYd4oBSzylY=;
        b=XYiXf/mMqWI4lwTKmshnp3LLO+5qreFwv1S6oNdoAPvhflGbx7+9DCZOCgkehy+GnG
         r0Wpdeyyh1xIs5nDsEba21P5lzx5+tu85IeTLcE3wfPRJsHDG7cafDAhjtroRO77nffZ
         K4+j/0Vw0w5e/3L/sTO62Q8slD8mSXqOipFnK+W2TCm2HWURZqbENv/wf7HHYk75JrpK
         USs9RqeduxoyrVp14vlMJ0K0ju+VYwVF85xyYPUKtVLohg0pyRfe0O0apDdqfivJG0xg
         q+mkX/JEUoENAkTYLoQYjTIgcSjb0SN0rFUnTzLU0eWwm4ua707vJhum4inz2iS7LrBw
         Dt1A==
X-Gm-Message-State: AOAM530e8rJhpTq3oLyv8TQBRTP0kWWCccN89/eZKgz7zJQHQxhF6nm6
	jVQuTBHBnNkGrUpNbJvWw/TG8/+KrajIEOs/R5KWscyv0YBORLvb
X-Google-Smtp-Source: ABdhPJwxLK0fNlMG/eAeeXSo0PIU8Vrx7NP0jLosQs9bvxOdQ+3kr/wwvwfrJZd+dKaNcFiUfzC/xrh/TGj0/zR5jck=
X-Received: by 2002:a81:36cf:0:b0:2e5:2597:a026 with SMTP id
 d198-20020a8136cf000000b002e52597a026mr10507079ywa.301.1647273739130; Mon, 14
 Mar 2022 09:02:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PuF6+hUSg0Jo8Lpn8fFgrVgPLBvv66yVMxGwpO0b9OKkA@mail.gmail.com>
In-Reply-To: <CAA=S3PuF6+hUSg0Jo8Lpn8fFgrVgPLBvv66yVMxGwpO0b9OKkA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 14 Mar 2022 11:02:03 -0500
Message-ID: <CAFche=go2RhMpadmg4y6DFM-_N1xJ2XfniB72f+m4CP-GckS5A@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: DPWP7LKV6O2WYAK5EPBUKOOMDTQ5MIGH
X-Message-ID-Hash: DPWP7LKV6O2WYAK5EPBUKOOMDTQ5MIGH
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What's the max legal value for these parameters in RFNOC blocks?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DPWP7LKV6O2WYAK5EPBUKOOMDTQ5MIGH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5072416418409309156=="

--===============5072416418409309156==
Content-Type: multipart/alternative; boundary="00000000000011a76905da2fced2"

--00000000000011a76905da2fced2
Content-Type: text/plain; charset="UTF-8"

The max CHDR_W allowed is 512 (per the specification). But only the X410
device supports this. For all other USRPs, you should use 64 bits. This is
because 64-bit is enough for all the supported rates on other USRPs. This
parameter is set by the rfnoc_image_core, since blocks need to agree on the
CHDR width.

The MTU parameter ("maximum transmission unit", or maximum packet length)
is an FPGA-wide setting. It gets set by higher level logic so that all
blocks agree on the MTU setting. Software also discovers this setting and
will coerce Ethernet packet sizes to meet this requirement.

The MTU parameter will be set to 10 when CHDR_W=64. That means the MTU is
2^10 = 1024 CHDR_W-bit words. 1024 64-bit words is 8 KiB. It is possible to
use a different MTU, but I don't recommend it unless you have a good
reason. Setting it to 11 (16 KiB) means you are wasting RAM because most
Ethernet adapters only support up to 9 KiB packets anyway. Going to 9 (4096
KiB) means you have to send twice as many packets for the same amount of
data, which makes it much more likely that you will drop packets.

Wade

On Mon, Mar 14, 2022 at 4:18 AM sp h <stackprogramer@gmail.com> wrote:

> What's the max legal value for these parameters in RFNOC blocks?
> Can I for an RFNOC block set CHDR_W to 1024?
> We know for communication between RFNOC blocks in USRP is used AXI4 stream
> bus.....
>   thanks in advance
>
> parameter CHDR_W = 64,
> parameter [5:0] MTU = 10
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000011a76905da2fced2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The max CHDR_W allowed is 512 (per the specification)=
. But only the X410 device supports this. For all other USRPs, you should u=
se 64 bits. This is because 64-bit is enough for all the supported rates on=
 other USRPs. This parameter is set by the rfnoc_image_core, since blocks n=
eed to agree on the CHDR width.<br></div><div><br>
</div><div>The MTU parameter (&quot;maximum transmission unit&quot;, or max=
imum packet length) is an FPGA-wide setting. It gets set by=20
higher level logic so that all blocks agree on the MTU setting. Software
 also discovers this setting and will coerce Ethernet packet sizes to meet =
this=20
requirement.

</div><div><br></div><div>The MTU parameter will be set to 10 when CHDR_W=
=3D64. That means the MTU is 2^10 =3D 1024 CHDR_W-bit words. 1024 64-bit wo=
rds is 8 KiB. It is possible to use a different MTU, but I don&#39;t recomm=
end it unless you have a good reason. Setting it to 11 (16 KiB) means you a=
re wasting RAM because most Ethernet adapters only support up to 9 KiB pack=
ets anyway. Going to 9 (4096 KiB) means you have to send twice as many pack=
ets for the same amount of data, which makes it much more likely that you w=
ill drop packets.</div><div><br></div><div>Wade<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 14, 20=
22 at 4:18 AM sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com">stackpro=
gramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">What&#39;s the max legal value for these p=
arameters in RFNOC blocks?<div>Can I for an RFNOC block set CHDR_W to 1024?=
</div><div>We know for communication between RFNOC blocks in USRP is used A=
XI4 stream bus.....</div><div>=C2=A0 thanks in advance</div><div><br><div><=
div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot=
;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;l=
ine-height:19px;white-space:pre-wrap"><div>  <span style=3D"color:rgb(0,0,2=
55)">parameter</span>       CHDR_W          =3D <span style=3D"color:rgb(9,=
134,88)">64</span>,</div><div>  <span style=3D"color:rgb(0,0,255)">paramete=
r</span> [<span style=3D"color:rgb(9,134,88)">5</span>:<span style=3D"color=
:rgb(9,134,88)">0</span>] MTU             =3D <span style=3D"color:rgb(9,13=
4,88)">10</span></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000011a76905da2fced2--

--===============5072416418409309156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5072416418409309156==--
