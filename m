Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF2D4BB56C
	for <lists+usrp-users@lfdr.de>; Fri, 18 Feb 2022 10:22:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD9A8384627
	for <lists+usrp-users@lfdr.de>; Fri, 18 Feb 2022 04:22:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PHk2aYrQ";
	dkim-atps=neutral
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 340A038455C
	for <usrp-users@lists.ettus.com>; Fri, 18 Feb 2022 04:21:49 -0500 (EST)
Received: by mail-yb1-f180.google.com with SMTP id v63so18244258ybv.10
        for <usrp-users@lists.ettus.com>; Fri, 18 Feb 2022 01:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=v+JTFqCJy6Vi/m4T+I3emKOnM2Lk0kvJkq3+J40ikRo=;
        b=PHk2aYrQ9ik4RHpbyJjBH3z1BKBrwbQyi94C0Jn1nRKQf+XJgzfCgXqi5cMzOKEazi
         GoznqE+Hu2Wt6Hxl2fKwpWtC8Q+EFAliI2GsguPv3ihjxLRbn4XtUl1ZAcFNj9jI98aa
         yxmL05l/ZPBo5n2ZcBeUSkG/OPP4esuqyFb1I/39C3zqs5hYsN+chBOTZVI+p75ehovr
         iRM3nzDv9eNpvjPTlPWqlMCnlsSdw7hofRi4TynKdXczUHOsJCwG/EtokEJrT0fx711Z
         GyvP/G6gbWuNvjGjQJc3476ziOg5/NGwWO214ZButX9wlylGp8nMHdf0Gvi5lCNlW0av
         D2lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=v+JTFqCJy6Vi/m4T+I3emKOnM2Lk0kvJkq3+J40ikRo=;
        b=7KpxJA+wh6SPVNcaT97Nix6ooi/jNZ+ghRtIfWDrxkkTu8AP4B66mNxefIyoQSIMN4
         CVdzYPRAEd1GPU90oopZYq0aQg2GjfnTK0ETK34eYq+5Vl51PeBpH2o1gD3CEP31w34x
         Jt9o2edAxAGgTDIAUghGOkotVsB72/nteYdYmSvN+La9u7JRVw4G0DAMW00/ADzo7YUN
         eO2W2r94gxGgl0bd3PrYfS3Mwl7DTCNb2r4JWQs62p/QHHjj9Dyw9RWe/ULnFeO7QAUZ
         oh9zY4YjSLyl8PVwGpbg8SbVuHvAMBg2ylxUlJEB+WZFZ6uBgadybLzSwmVzRuwczk+w
         1M0A==
X-Gm-Message-State: AOAM531Nqx/kqM2LQXNGWSfRlyPeqYqNTzepiRHOcCWuMLr+xM+2g+qZ
	uhTaJydPmEMbE+r7uVGXw4A/du+1bpV+SJ6v3wpNAlllDrM+zA==
X-Google-Smtp-Source: ABdhPJzOlEzMpoOV0FodOUqctQbK92HyfPYlMUynuxuCISCP4tQ1v+KbNvxDWahNKxvk+2FJnXVmf5gP8NNwpDNVV+k=
X-Received: by 2002:a25:c6:0:b0:61d:ed35:bf3e with SMTP id 189-20020a2500c6000000b0061ded35bf3emr6391372yba.464.1645176108657;
 Fri, 18 Feb 2022 01:21:48 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3Pt2bDbj6K8WGi1dh1=nxdGtgibAuB9UYP376kB4t_iDqQ@mail.gmail.com>
In-Reply-To: <CAA=S3Pt2bDbj6K8WGi1dh1=nxdGtgibAuB9UYP376kB4t_iDqQ@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Fri, 18 Feb 2022 12:51:26 +0330
Message-ID: <CAA=S3PuTzTAd99ts8RbpONSKrXRDq9d-RP9EtfZbdJVbttGXqw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: YDC7TDAAQIA3LVE4NMXFAGTAWOBQMA4P
X-Message-ID-Hash: YDC7TDAAQIA3LVE4NMXFAGTAWOBQMA4P
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to create the RFNOC block gain for other RFNOC image cores...Default is for X310, but I want to be x300?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YDC7TDAAQIA3LVE4NMXFAGTAWOBQMA4P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5722187669520931575=="

--===============5722187669520931575==
Content-Type: multipart/alternative; boundary="0000000000008cb26705d847692b"

--0000000000008cb26705d847692b
Content-Type: text/plain; charset="UTF-8"

Does anyone have not any idea? thanks in advance

On Sun, Feb 13, 2022 at 10:51 AM sp h <stackprogramer@gmail.com> wrote:

> How to create the RFNOC block gain for other RFNOC image cores...Default
> is for X310, but I want to be x300?
> When I created a new RFNOC module with the below commands, the RFNNOC
> image core is x310 (my Gnuradio 3.8.1, UHD 4.1.0.5).
> $rfnocmodtool newmod transceiver
> $cd rfnoc-transceiver
> $ rfnocmodtool add gain
>
> *You can icores folder list, you are seeing that default is x310, with
> which command I can change to other RFNOC like x300 and son ...*
> thnaks in advance
>
> $:~/fnoc-transceiver/rfnoc/icores$ ls
> CMakeLists.txt                  x310_rfnoc_image_core.vh
> gain_x310_rfnoc_image_core.yml  x310_static_router.hex
> x310_rfnoc_image_core.v
>

--0000000000008cb26705d847692b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does anyone=C2=A0have not any idea? thanks in advance</div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Su=
n, Feb 13, 2022 at 10:51 AM sp h &lt;<a href=3D"mailto:stackprogramer@gmail=
.com">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr">How to create the RFNOC bloc=
k gain for other RFNOC image cores...Default is for X310, but I want to be =
x300?<br><div>When I created a new RFNOC module with the below commands, th=
e=C2=A0RFNNOC image core is x310 (my Gnuradio 3.8.1, UHD 4.1.0.5).</div><di=
v><span style=3D"color:rgb(72,70,91);font-family:-apple-system,BlinkMacSyst=
emFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;N=
oto Sans&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoj=
i&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:=
15px">$rfnocmodtool newmod transceiver</span><br style=3D"box-sizing:border=
-box;color:rgb(72,70,91);font-family:-apple-system,BlinkMacSystemFont,&quot=
;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans&quo=
t;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quo=
t;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:15px"><span =
style=3D"color:rgb(72,70,91);font-family:-apple-system,BlinkMacSystemFont,&=
quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans=
&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,=
&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:15px">$c=
d rfnoc-transceiver</span><br style=3D"box-sizing:border-box;color:rgb(72,7=
0,91);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Rob=
oto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot=
;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&q=
uot;,&quot;Noto Color Emoji&quot;;font-size:15px"><span style=3D"color:rgb(=
72,70,91);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;=
,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&=
quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symb=
ol&quot;,&quot;Noto Color Emoji&quot;;font-size:15px">$ rfnocmodtool add ga=
in</span><br></div><div><span style=3D"color:rgb(72,70,91);font-family:-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Ne=
ue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color =
Emoji&quot;;font-size:15px"><br></span></div><div><span style=3D"color:rgb(=
72,70,91);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;=
,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&=
quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symb=
ol&quot;,&quot;Noto Color Emoji&quot;;font-size:15px"><b>You can icores fol=
der list, you are seeing that default is x310, with which command I can cha=
nge to other RFNOC like x300 and son ...</b></span></div><div><span style=
=3D"color:rgb(72,70,91);font-family:-apple-system,BlinkMacSystemFont,&quot;=
Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans&quot=
;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:15px">thnaks =
in advance</span></div><div><span style=3D"color:rgb(72,70,91);font-family:=
-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetic=
a Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Color Emoji=
&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Co=
lor Emoji&quot;;font-size:15px"><br></span></div><div>$:~/fnoc-transceiver/=
rfnoc/icores$ ls<br>CMakeLists.txt =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0x310_rfnoc_image_core.vh<br>gain_x310_rfnoc_image_c=
ore.yml =C2=A0x310_static_router.hex<br>x310_rfnoc_image_core.v<br></div></=
div>
</blockquote></div>

--0000000000008cb26705d847692b--

--===============5722187669520931575==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5722187669520931575==--
