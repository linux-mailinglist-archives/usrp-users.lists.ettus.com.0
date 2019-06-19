Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3A94BF07
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 18:53:13 +0200 (CEST)
Received: from [::1] (port=35078 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hddpg-0008Oh-7f; Wed, 19 Jun 2019 12:53:12 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:42108)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hddpb-00087T-Pl
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 12:53:07 -0400
Received: by mail-ot1-f51.google.com with SMTP id l15so10360094otn.9
 for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2019 09:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TlhgfFn5Re+jFLpKyYciobIXav2pLfK8j7j887tLrrc=;
 b=bxXrCGc9Bq8eHkxRCDommfkVf1hMJaPaaVy6PBIieeRGUR96FHq6GsRoAlxsfF4Kmh
 YLbEAph6wf1Q8uplqof7p0upMrc0OKg6T88J8EjFCd8qqwDc4do/832hVz844i9iWbkm
 QizT94pA5oW1uBPs2hC+GK9HUJZ5KybBg61dvhDEbOcyVTI/nSxh3w8LJFn6Dhy5Ce+j
 VGiNKpVM70yqok/G/4ncZsYufEJ7ZyfRof9uUsqwea38yPcsoqDpNXNR/mdOHSFpwUvV
 kUOt5R7FnEKwQnLNKpPvQm1CyiaIuf+DR9y/1se8OP8trmYqEvK1x4kisuvUn70tVJMM
 ylCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TlhgfFn5Re+jFLpKyYciobIXav2pLfK8j7j887tLrrc=;
 b=OhKUH6rBoO3IoO1OPmSRgRH+bCOQlOJzwS/pYIn1XrpWlkw9AY0zdB3DLim95XjnOb
 bcdZyFK/BnI428GNzE5+ie0K2oa0zR7v5+mDe8TlkIMYHVGQGJSQL55a4k5256AChBWX
 wrhzxXj0DGG8z91GGdJgsyB64dkZt242u+2MVjiRJoqSH7Sl2pDbl2rTmhYl/cIx+Hco
 dNDlOw07mJo0GVlsiHFAy0DtZ9p3OlL2t55xLTLFDconKRRUucOGgjcKgaRg8KGj3Y9r
 ktiIJAJUyE1BsU7/Slz3z4ydKG64NLMB71qk2gF1/Oh+Z9vBIQATgmPbg0QXwusZEREQ
 Bp9w==
X-Gm-Message-State: APjAAAVut+7Ofnn0Wmi/IyCEjk/6ardusr6X9lpAhVe4EMditTs9NSd9
 xgvLo/BF00ivQ7954DCDYTZYi/pmZPTndovsYW5Z1uOO
X-Google-Smtp-Source: APXvYqwBxb3Gr2vNrq+KjbeXhNsPVLtUnA41b6kB1DzxCIz3RJ6FDnUUvAs4tHeX5v4jAau8Z+6+Uo+Bzr7KFLvuN0M=
X-Received: by 2002:a9d:7697:: with SMTP id j23mr265200otl.128.1560963147226; 
 Wed, 19 Jun 2019 09:52:27 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR12MB23409479CB3FBD5B7DCAAC19AFE50@BL0PR12MB2340.namprd12.prod.outlook.com>
 <5D0A63C7.7080004@gmail.com>
 <BL0PR12MB2340261564BEEC740712C9BCAFE50@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340261564BEEC740712C9BCAFE50@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Wed, 19 Jun 2019 09:53:11 -0700
Message-ID: <CAL263ixsgxh+N9fO0YH8ELC2ChMQJ18RQGRrmZpHxDt84xZBfw@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Subject: Re: [USRP-users] E320 with larger SD card
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
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2367694570474991458=="
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

--===============2367694570474991458==
Content-Type: multipart/alternative; boundary="000000000000e5f782058bb00d73"

--000000000000e5f782058bb00d73
Content-Type: text/plain; charset="UTF-8"

Hi Jason,

I have some instructions I will send you off list for adding an additional
partition you can try. I wrote them for the E310, but have not yet tested
them on E320, however, it should be a similar process.

Regards,
Nate Temple

On Wed, Jun 19, 2019 at 9:44 AM Jason Matusiak via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I used bmaptool to write the image and I used gparted to extend it.  I
> just tried again and still no dice.
>
>
> I just tried to boot with the serial terminal on and I see this on the
> screen (no LED ever comes on):
>
>
> U-Boot SPL 2018.01 (May 10 2019 - 13:20:55)
> mmc boot
> Trying to boot from MMC1
> reading u-boot.img
> reading u-boot.img
>
>
> U-Boot 2018.01 (May 10 2019 - 13:20:55 +0000)
>
> Model: NI Ettus Research Project NEON SDR
> DRAM:  ECC disabled 1 GiB
> MMC:   sdhci@e0100000: 0
>
>
>
>
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Wednesday, June 19, 2019 12:33 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] E320 with larger SD card
>
> On 06/19/2019 12:29 PM, Jason Matusiak via USRP-users wrote:
>
> I wanted to use a larger SD card than the one that as supplied, but I am
> having issues.  I loaded up the card, and then extended the data partition
> to use up the rest of the free space (about 100GB).  But then it doesn't
> boot.
>
> What steps did you take to extend the partition?
>
>
>
> I am wondering if the change to a partition size screwed up something in a
> config file somewhere.  Is there a way to fix this without rebuilding a
> docker image?  I am using the UHD 3.14.0.0. that has the smaller data
> partition (UHD 3.14.1.0 has a larger data partition, but doesn't include
> any GR/python packages, so I need to use the older image).
>
>
> Thanks.
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e5f782058bb00d73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Jason,<br><br>I have some instructions I will send y=
ou off list for adding an additional partition you can try. I wrote them fo=
r the E310, but have not yet tested them on E320, however, it should be a s=
imilar process. <br><br>Regards,<br>Nate Temple</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 19, 2019=
 at 9:44 AM Jason Matusiak via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-1750080032569029624divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p style=3D"margin-top:0px;margin-bottom:0px">I used bmaptool to write the =
image and=C2=A0I used gparted to extend it.=C2=A0 I just tried again and st=
ill no dice.</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">I just tried to boot with the=
 serial terminal on and I see this on the screen (no LED ever comes on):</p=
>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
<div>U-Boot SPL 2018.01 (May 10 2019 - 13:20:55)</div>
<div>mmc boot</div>
<div>Trying to boot from MMC1</div>
<div>reading u-boot.img</div>
<div>reading u-boot.img</div>
<div><br>
</div>
<div><br>
</div>
<div>U-Boot 2018.01 (May 10 2019 - 13:20:55 +0000)</div>
<div><br>
</div>
<div>Model: NI Ettus Research Project NEON SDR</div>
<div>DRAM:=C2=A0 ECC disabled 1 GiB</div>
<div>MMC:=C2=A0 =C2=A0sdhci@e0100000: 0</div>
<div><br>
</div>
<br>
<p></p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-1750080032569029624divRplyFwdMsg" dir=3D"ltr"><font sty=
le=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fro=
m:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com"=
 target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of =
Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, June 19, 2019 12:33 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] E320 with larger SD card</font>
<div>=C2=A0</div>
</div>
<div style=3D"background-color:rgb(255,255,255)">
<div class=3D"gmail-m_-1750080032569029624x_moz-cite-prefix">On 06/19/2019 =
12:29 PM, Jason Matusiak via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div id=3D"gmail-m_-1750080032569029624x_divtagdefaultwrapper" dir=3D"ltr" =
style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans=
-serif">
<p style=3D"margin-top:0px;margin-bottom:0px">I wanted to use a larger SD c=
ard than the one that as supplied, but I am having issues.=C2=A0 I loaded u=
p the card, and then extended the data partition to use up the rest of the =
free space (about 100GB).=C2=A0 But then it doesn&#39;t
 boot.</p>
</div>
</blockquote>
What steps did you take to extend the partition?<br>
<br>
<br>
<blockquote type=3D"cite">
<div id=3D"gmail-m_-1750080032569029624x_divtagdefaultwrapper" dir=3D"ltr" =
style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans=
-serif">
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">I am wondering if the change =
to a partition size screwed up something in a config file somewhere.=C2=A0 =
Is there a way to fix this without rebuilding a docker image?=C2=A0 I am us=
ing the UHD 3.14.0.0. that has the smaller data
 partition (UHD 3.14.1.0 has a larger data partition, but doesn&#39;t inclu=
de any GR/python packages<span>, so I need to use the older image</span>).<=
/p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Thanks.</p>
</div>
<br>
<fieldset class=3D"gmail-m_-1750080032569029624x_mimeAttachmentHeader"></fi=
eldset> <br>
<pre>_______________________________________________
USRP-users mailing list
<a class=3D"gmail-m_-1750080032569029624x_moz-txt-link-abbreviated gmail-m_=
-1750080032569029624OWAAutoLink" href=3D"mailto:USRP-users@lists.ettus.com"=
 id=3D"gmail-m_-1750080032569029624LPlnk62513" target=3D"_blank">USRP-users=
@lists.ettus.com</a>
<a class=3D"gmail-m_-1750080032569029624x_moz-txt-link-freetext gmail-m_-17=
50080032569029624OWAAutoLink" href=3D"http://lists.ettus.com/mailman/listin=
fo/usrp-users_lists.ettus.com" id=3D"gmail-m_-1750080032569029624LPlnk94157=
3" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com</a>
</pre>
</blockquote>
<br>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000e5f782058bb00d73--


--===============2367694570474991458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2367694570474991458==--

