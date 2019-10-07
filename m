Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA209CEC6C
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2019 21:06:56 +0200 (CEST)
Received: from [::1] (port=46456 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iHYLP-0002au-MP; Mon, 07 Oct 2019 15:06:55 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:41285)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1iHYLL-0002QT-Dz
 for usrp-users@lists.ettus.com; Mon, 07 Oct 2019 15:06:51 -0400
Received: by mail-io1-f43.google.com with SMTP id n26so31009446ioj.8
 for <usrp-users@lists.ettus.com>; Mon, 07 Oct 2019 12:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K+vMrrVovAg545T8hw36GOsUzpN/LzpQuHNg5RslV44=;
 b=G5CfCKpS1vANCONpVUOU53f1tZArWLx/39EV/H9zvYWaRVWxALMX6yF3CYnOnngFVN
 GM3QQ8eGnLIRHa+OZq8UUAT9HmRRgPzM6iS1hYyCTlUEwpn49s5O9NUBXPtnO1ZGh3+K
 vfRiT1sxXf/6kN8PB5Lit00clSiy3dFGPCfTVTWv1EPxlt+5ffxYZZFmLSUOtJ/YxrcR
 hB2PMtm9ILEs/BkOTTuZW8gt9mNBdH3T8e00YMvivIhMX1R/srSNIUwcZjxBu9X90V3l
 yTQdNfMQfEOoIr8+4EuvnMNEuAyDp29Hl2T5a0+aXJhOkLp/wejaypF/7co1X66YSzYN
 6g+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K+vMrrVovAg545T8hw36GOsUzpN/LzpQuHNg5RslV44=;
 b=JxjP1eOM4OLuXW743bvUIIOCaNgl7JiEAPUQfT8XDRTyCESXXNcADrkMuZ5KOeCwKX
 Ct4M/nnO1JH4peMCgaHkOhByZltvr6CSeDLslNd5XYS1LxwaNOsxYdeHSPUiYr9ji29Q
 8/RpJSchpAumDByvItXUZf49eJScW6SNEYmF1lnkY/4zIc4Tf3QKYGxY/IqvrL1KnPHg
 LtOmOIwuj3HLLKQxcwIMEF37y23bAEsGZhHLZTehj1+C+6LlilyunV/537aK0fq45YH3
 tbn+GiAWJLsiHhhCu7XsQVZvo9M2uM047NrVuhLjJ9Gyl3R/saFTQ45M28Mly4YiYmvU
 Sb+w==
X-Gm-Message-State: APjAAAWrHwtkVEXI3eSqsxx/Glewu727ulGZmglbupgQNg23X3okRHr+
 go2u8l+ijB7F62KxsmbPbXpc3GxsmkITwNHkVbHJpQ==
X-Google-Smtp-Source: APXvYqytsUXZbgiYtIHLbtV3g42qM3MCcHM+F8bGO95ATJQwq2h63UIRCttu2xgxwb2Da1uyrn+LONMW9BIQ/OA6o2g=
X-Received: by 2002:a02:ab85:: with SMTP id t5mr28584638jan.23.1570475170506; 
 Mon, 07 Oct 2019 12:06:10 -0700 (PDT)
MIME-Version: 1.0
References: <dee4f507-7c7c-024c-a57b-a1417d02f98b@gmail.com>
 <5D9B8B8F.4060602@gmail.com>
In-Reply-To: <5D9B8B8F.4060602@gmail.com>
Date: Mon, 7 Oct 2019 12:05:59 -0700
Message-ID: <CAKJyDkLLkVB=0adY0+1637TFrVPr0-9jc8KkKpeWXHEKf5phJw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Problems with N210 FPGA bitfile -- image not valid?
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4316923833208420282=="
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

--===============4316923833208420282==
Content-Type: multipart/alternative; boundary="000000000000aad8b8059456bedb"

--000000000000aad8b8059456bedb
Content-Type: text/plain; charset="UTF-8"

You can convert your .bit file to a .bin file with this utility:
https://github.com/EttusResearch/uhd/blob/UHD-3.14/mpm/python/usrp_mpm/fpga_bit_to_bin.py


On Mon, Oct 7, 2019 at 12:02 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 10/07/2019 11:19 AM, Francesco Restuccia via USRP-users wrote:
> > Hi all,
> >
> > I've built an N210 image using the source code provided by Ettus--
> >
> > When I try to burn the FPGA image onto the N210, though, I receive the
> > following error:
> >
> > frank@frank-iMac:~$ uhd_image_loader
> > --args="type=usrp2,addr=192.168.10.2" --no-fw
> > --fpga-path=/home/frank/u2plus.bit
> > [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
> > UHD_3.15.0.git-74-g9ea710b1
> > Unit: USRP N210 r4 (F2E28F, 192.168.10.2)
> > Error: RuntimeError: The file at path "/home/frank/u2plus.bit" is not
> > a valid FPGA image.
> > frank@frank-iMac:~$
> >
> > This is the size of the image:
> >
> > frank@frank-iMac:~$ ls -la /home/frank/u2plus.bit
> > -rw-r--r-- 1 frank frank 1303318 Oct  7 11:07 /home/frank/u2plus.bit
> > frank@frank-iMac:~$
> >
> > Again, no modifications to the Verilog designs -- everything,
> > including makefile, is out of the box.
> >
> > Any suggestion?
> >
> > Thanks,
> >
> > Francesco
> >
> You must use the .bin file uhd_image_loader
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000aad8b8059456bedb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You can convert your .bit file to a .bin file with this ut=
ility:<div><span id=3D"gmail-docs-internal-guid-7432ece8-7fff-c2ac-7697-6ef=
b67d0b890"><a href=3D"https://github.com/EttusResearch/uhd/blob/UHD-3.14/mp=
m/python/usrp_mpm/fpga_bit_to_bin.py" style=3D"text-decoration-line:none"><=
span style=3D"font-size:11pt;font-family:Arial;background-color:transparent=
;font-variant-numeric:normal;font-variant-east-asian:normal;text-decoration=
-line:underline;vertical-align:baseline;white-space:pre-wrap">https://githu=
b.com/EttusResearch/uhd/blob/UHD-3.14/mpm/python/usrp_mpm/fpga_bit_to_bin.p=
y</span></a></span>=C2=A0=C2=A0<br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 7, 2019 at 12:02 PM Ma=
rcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">On 10/07/2019 11:19 AM, Francesco Restuccia v=
ia USRP-users wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I&#39;ve built an N210 image using the source code provided by Ettus--=
<br>
&gt;<br>
&gt; When I try to burn the FPGA image onto the N210, though, I receive the=
 <br>
&gt; following error:<br>
&gt;<br>
&gt; frank@frank-iMac:~$ uhd_image_loader <br>
&gt; --args=3D&quot;type=3Dusrp2,addr=3D192.168.10.2&quot; --no-fw <br>
&gt; --fpga-path=3D/home/frank/u2plus.bit<br>
&gt; [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; <br>
&gt; UHD_3.15.0.git-74-g9ea710b1<br>
&gt; Unit: USRP N210 r4 (F2E28F, 192.168.10.2)<br>
&gt; Error: RuntimeError: The file at path &quot;/home/frank/u2plus.bit&quo=
t; is not <br>
&gt; a valid FPGA image.<br>
&gt; frank@frank-iMac:~$<br>
&gt;<br>
&gt; This is the size of the image:<br>
&gt;<br>
&gt; frank@frank-iMac:~$ ls -la /home/frank/u2plus.bit<br>
&gt; -rw-r--r-- 1 frank frank 1303318 Oct=C2=A0 7 11:07 /home/frank/u2plus.=
bit<br>
&gt; frank@frank-iMac:~$<br>
&gt;<br>
&gt; Again, no modifications to the Verilog designs -- everything, <br>
&gt; including makefile, is out of the box.<br>
&gt;<br>
&gt; Any suggestion?<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Francesco<br>
&gt;<br>
You must use the .bin file uhd_image_loader<br>
<br>
<br>
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

--000000000000aad8b8059456bedb--


--===============4316923833208420282==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4316923833208420282==--

