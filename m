Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4192339C12A
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 22:19:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4B28C38472F
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 16:19:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="gNFH4iDe";
	dkim-atps=neutral
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id E2BC4384680
	for <usrp-users@lists.ettus.com>; Fri,  4 Jun 2021 16:18:29 -0400 (EDT)
Received: by mail-ej1-f47.google.com with SMTP id jt22so16320449ejb.7
        for <usrp-users@lists.ettus.com>; Fri, 04 Jun 2021 13:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TE/CGnO+rg37e8BGqaTpr0tBZLZ7pMJe7Ewlo22cnIE=;
        b=gNFH4iDe2SV4+QmOnXdz3EEjJaEiYC2UTqfXEcPI4rqKSCZbbExoldJGEdZcv/pFa+
         ALtOlWayh8ZB+ABerpGzN5EEz0TTML4QCPNK3ybbWuJ5PmCpsuO8pm3W6JlZ1ug4p04h
         7ecCuLURJwmvNn37wjqxKjhpgcCGQ//bMJw+rAn+glAzz8P1hCCXtEpaCVsh7HWIR18f
         HErjKUcpiLSXhveqFsMHskoIFWmO6i9tWtEbaTjyCbasY6bjRJz9hRgvGZU/4w+o4Cvk
         mo6s42fEQlwM8GiS2AtpCPTw+eaAl5D9R+V8b1NTdtvIjimPQr7djylOuFt5oo69UGrS
         A5ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TE/CGnO+rg37e8BGqaTpr0tBZLZ7pMJe7Ewlo22cnIE=;
        b=izjg6T1xMOhbbVyGpksSv4ovengbEUwd2YA5zJxh2RROV5Bs72r7rHkxyfict7Mbqm
         Rz+7cMMprgSwXfO3+uPFancimDBHb8jePpbqSn+KQ9VGPqtvoTGOMOKjsJLKLIX/SIyI
         0E6Yfji2jNxJvHcdtQ+CTpFDdBWTHzWwKJbq8nRZECPFwUeitHehTb4KQgrvoXUvfaLs
         wjZvxZvOieWD0OWBBjjyJWMJtZzYjGyVJbXivRMcSa39rBYSQRy553tpc19gqvZoncp6
         jXLrhU8JVD+QNxH+nfiVlaY5MkN4y85W6tIzrf0zWhBcb43wM4DGlvNCTojkbOtLs5A7
         0GGw==
X-Gm-Message-State: AOAM533bol8k0eHXcELtTRH2a5TQxp0dDkuYQp9dnvZOgJM66T/Bs8Jf
	NMnpeN0J9VqKO8BjapycnB0hNvMMdvFoGsEX6ZAK2hkk
X-Google-Smtp-Source: ABdhPJyz2Ze7psu/TzoFpi8B2p9AqNBRYidWh2hdfTVklPiT+FwH4J14JiRKwR5D2prSVDX2DvY0ZYiru/iH+OPnbaQ=
X-Received: by 2002:a17:907:1c13:: with SMTP id nc19mr6010536ejc.168.1622837908823;
 Fri, 04 Jun 2021 13:18:28 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR12MB38719D13ABC60C01624DC1BCAF3B9@MN2PR12MB3871.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB38719D13ABC60C01624DC1BCAF3B9@MN2PR12MB3871.namprd12.prod.outlook.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Fri, 4 Jun 2021 16:18:17 -0400
Message-ID: <CAGNhwTM8J-x4L7eRvarjb2qzNc2=CfrEae2X7-YZ4ywfCWdYxA@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Message-ID-Hash: BQEPITEX3UX4LYE35KIYAXW2AKWRYVWS
X-Message-ID-Hash: BQEPITEX3UX4LYE35KIYAXW2AKWRYVWS
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ettus Mail List <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Troubles with the QSFP+ on the N3x0 series
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BQEPITEX3UX4LYE35KIYAXW2AKWRYVWS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3142331579681925276=="

--===============3142331579681925276==
Content-Type: multipart/alternative; boundary="00000000000015759305c3f66546"

--00000000000015759305c3f66546
Content-Type: text/plain; charset="UTF-8"

Hi Jason - Answers, and more. I hope this is useful and helps clarify the
options. - MLD

1) The N32x QSFP+ port/link/interface should work with UHD 3.15 via the XQ
FPGA image. I haven't tried that in a while, but it did work for me once
upon a time.

2) When using the WX FPGA image on any N3xy, you get just SFP+ port 1 for
data, which is just a single 10 Gb link -- not the QSFP+ port (which is on
the N32x only, by the way). If you use the XQ FPGA image with the N32x then
you get 1x or 2x 10 Gb links via the QSFP+ port: lanes 0 and 1 (or 1 and 2
if you count lanes as 1's-based). In theory you could use 2x SFP+ 10 Gb
links on a host NIC and aggregate them via fiber into a QSFP+ adapter
attached to the USRP; I've never tried this directly, but I can say that
taking QSFP+ off a host NIC and switching lanes works fine using the
appropriate adapters and fiber cables and connectors. Just make sure that
lanes 0 &/or 1 on the USRP side match up correctly with the other side
coming in (whatever lane[s] you choose to use, so long as it/they are valid
on the NIC).

3) When using the WX FPGA image with an N3xy, "ifconfig" will report back
just "sfp1" as the 10 Gb data link that is connected to SFP+ port 1 on the
USRP; not the QSFP+ port (which is, again, on just the N32x); this single
link is set that up as you would any data link on a USRP and host. If you
use the XQ FPGA image with an N32x, "ifconfig" will report back "sfp0" and
"sfp1" as the 2 10 Gb data links, and you set those up just as you would if
you were using the XG FPGA image. The FPGA maps between the data link (SFP+
or QSFP+) and the OS, so that the OS "sees" 1 or 2 10 Gb links; or that's
how I understand this to work ... the end result is the same regardless of
where the mapping happens :)


On Fri, Jun 4, 2021 at 2:26 PM Jason Matusiak <jason@gardettoengineering.com>
wrote:

> I have been away from USRPs for a while but am back to using some N3x0
> units and am having some issues.
>
> 1 - Does QSFP work with UHD 3.15?  We'd prefer not to go up to v4 yet due
> to some issues we've seen in testing it, but I am not sure how well
> supported QSFP is on 3.15.
>
> 2 - When using the QSFP with White Rabbit (WX image), is it correct to say
> that the QSFP link is really x2 10Gb links, not a single 20Gb?  Meaning
> that we would need a 40Gb QSFP that can handle 4 10G outputs, correct?
>
> 3 - Lastly, I cannot find any documentation on setting up the QSFP.  I've
> downloaded a new WX image over Mender, but I don't see where/how to
> configure the QSFP.  Is there an article or writeup anywhere that walks
> through the steps?
>
> Thank you
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000015759305c3f66546
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jason - Answers, and more. I hope this is useful and he=
lps clarify the options. - MLD<div><br></div><div>1) The N32x QSFP+ port/li=
nk/interface should work with UHD 3.15 via the XQ FPGA image. I haven&#39;t=
 tried that in a while, but it did  work for me once upon a time.</div><div=
><br></div><div>2) When using the WX FPGA image on any N3xy, you get just S=
FP+ port 1 for data, which is just a single 10 Gb link -- not the QSFP+ por=
t (which is on the N32x only, by the way). If you use the XQ FPGA image wit=
h the N32x then you get 1x or 2x 10 Gb links via the QSFP+ port: lanes 0 an=
d 1 (or 1 and 2 if you count lanes as 1&#39;s-based). In theory you could u=
se 2x SFP+ 10 Gb links on a host NIC and aggregate them via fiber into a QS=
FP+ adapter attached to the USRP; I&#39;ve never tried this directly, but I=
 can say that taking QSFP+ off a host NIC and switching lanes works fine us=
ing the appropriate adapters and fiber cables and connectors. Just make sur=
e that lanes 0 &amp;/or 1 on the USRP side match up correctly with the othe=
r side coming in (whatever lane[s] you choose to use, so long as it/they ar=
e valid on the NIC).</div><div><br></div><div>3) When using the WX FPGA ima=
ge with an N3xy, &quot;ifconfig&quot; will report back just &quot;sfp1&quot=
; as the 10 Gb data link that is connected to SFP+ port 1 on the USRP; not =
the QSFP+ port (which is, again, on just the N32x); this single link is set=
 that up as you would any data link on a USRP and host. If you use the XQ F=
PGA image with an N32x, &quot;ifconfig&quot; will report back &quot;sfp0&qu=
ot; and &quot;sfp1&quot; as the 2 10 Gb data links, and you set those up ju=
st as you would if you were using the XG FPGA image. The FPGA maps between =
the data link (SFP+ or QSFP+) and the OS, so that the OS &quot;sees&quot; 1=
 or 2 10 Gb links; or that&#39;s how I understand this to work ... the end =
result is the same regardless of where the mapping happens :)</div><div><br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Jun 4, 2021 at 2:26 PM Jason Matusiak &lt;<a href=3D"mailto:=
jason@gardettoengineering.com" target=3D"_blank">jason@gardettoengineering.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I have been away from USRPs for a while but am back to using some N3x0 unit=
s and am having some issues.<br>
<br>
1 - Does QSFP work with UHD 3.15?=C2=A0 We&#39;d prefer not to go up to v4 =
yet due to some issues we&#39;ve seen in testing it, but I am not sure how =
well supported QSFP is on 3.15.<br>
<br>
2 - When using the QSFP with White Rabbit (WX image), is it correct to say =
that the QSFP link is really x2 10Gb links, not a single 20Gb?=C2=A0 Meanin=
g that we would need a 40Gb QSFP that can handle 4 10G outputs, correct?<br=
>
<br>
3 - Lastly, I cannot find any documentation on setting up the QSFP.=C2=A0 I=
&#39;ve downloaded a new WX image over Mender, but I don&#39;t see where/ho=
w to configure the QSFP.=C2=A0 Is there an article or writeup anywhere that=
 walks through the steps?<br>
<br>
Thank you</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000015759305c3f66546--

--===============3142331579681925276==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3142331579681925276==--
