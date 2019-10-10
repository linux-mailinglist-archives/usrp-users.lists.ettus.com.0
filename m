Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BBDD2D55
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2019 17:12:30 +0200 (CEST)
Received: from [::1] (port=55594 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iIa76-0003MP-Hu; Thu, 10 Oct 2019 11:12:24 -0400
Received: from mail-ot1-f45.google.com ([209.85.210.45]:37534)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iIa72-0003HT-6n
 for usrp-users@lists.ettus.com; Thu, 10 Oct 2019 11:12:20 -0400
Received: by mail-ot1-f45.google.com with SMTP id k32so5182929otc.4
 for <usrp-users@lists.ettus.com>; Thu, 10 Oct 2019 08:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rg1JGYMhrI5ht+GKyQnQnXDbnb1aum3dRu5CfMGMp4M=;
 b=tcdtYYq/D/JZr2053J18RIEaKmEqnypg1zwb9D23/MJmVO0BMMChyaxHc10B7j0MZF
 93KQ0Lgg/NzQukTsSWY0jhVNwxVC1P/1EO6qOdtBBDy9z4SHrqYc88EngBlCvlS0RZGs
 kJ9vKVRnrwiedfZHV0VGO9KJaWk/346B79//9uxc63S93bdq6y7oZEao6iB/toWIAHXN
 NbAkdjNpnkq+VbXMlL9bu+jVzaa14XAug/a2+9EzYLO2Dq33ZcjwRnd72eBkkkB/OeoS
 BDgE4i2b30Ofs/vphd9E1HiXT861CA7He/XQoMg/SUj2sMhFyFTEtDb464SrfVS96BHL
 XWFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rg1JGYMhrI5ht+GKyQnQnXDbnb1aum3dRu5CfMGMp4M=;
 b=KdXpvuvl+geZ1HYvgGp+AxycdH6iLWTC7v/7Lggo2LLsNz0YjGL/9syfcB2M1wJRA9
 ERGxuzH5CHvtjjHXgB3eycKh3PSw5PLWX8JYu8r53wjbygROFsL5bmZ5hbBVzdaUVP2j
 R046cBEtPpcq6BQsVwafYSEaq22cvV+/8qHEuNtF4KDdimYUYObUae9oFq3YM/GTjBTa
 kb7++UMlKz8a4bmUcACWleJBSHxxUMZw/EP1Az5Tp1L+5DfJiQjoDewJv3EnM+WwmWA7
 9hkG0cyfcfRGrwQFGjcB/vaN/VdZ9fyy2u200OvB8hRHmxrhQseC7UW9vbM58z1Q/tc/
 +ejQ==
X-Gm-Message-State: APjAAAVn4Ap6mMR93jSEsSeqWwuqJ068f1Xje9aJVMP9SuGIzBcEC7by
 P95FQmjim7ov3nFCUX92XkA2+h/AmlklnPpOSVA6EHWq1kja1g==
X-Google-Smtp-Source: APXvYqzBpHME0OOYZYN5L5MEltGuVRaAeahJLOjin9P3bkiWqgJ4um021zDAyM8nVFj2Y93ykUWarIVIVna7dNHX4Uk=
X-Received: by 2002:a05:6830:1e70:: with SMTP id
 m16mr8616653otr.128.1570720299354; 
 Thu, 10 Oct 2019 08:11:39 -0700 (PDT)
MIME-Version: 1.0
References: <133fcc07ca0e4f73bb17dbb6f7e84b0d@heig-vd.ch>
In-Reply-To: <133fcc07ca0e4f73bb17dbb6f7e84b0d@heig-vd.ch>
Date: Thu, 10 Oct 2019 08:12:15 -0700
Message-ID: <CAL263iwTB-UWfL1drKKUFuyKhmE4S_UAO8SoaLYOdTHP8UAgqg@mail.gmail.com>
To: Truan David <david.truan@heig-vd.ch>
Subject: Re: [USRP-users] N320 Dual SFP issue with 40Gbps QSFP+ switch
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8254008911939428214=="
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

--===============8254008911939428214==
Content-Type: multipart/alternative; boundary="0000000000007c1f7805948fd155"

--0000000000007c1f7805948fd155
Content-Type: text/plain; charset="UTF-8"

Hi David,

Can you try loading the XQ FPGA image onto the N320? When using the XG
image, only the onboard SFP 0,1 adapters are used. When using the XQ image,
two lanes of the QSFP will be used (0,1). A table showing what protocols /
ports per FPGA image can be found here [0].

[0] -
https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_rh_sfp_protocols

Regards,
Nate Temple

On Wed, Oct 9, 2019 at 7:33 AM Truan David via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone,
>
> We are currently trying to connect the N320 (configured with the XG image)
> to one of our server using the QSFP+ interface through a switch (FS
> S5900-24S4T2Q). The server is equipped with 40Gbps QSFP+ interface and the
> connexion works when connecting directly by QSFP+ without the switch in
> between.
>
> However when connecting it to the switch (to a 40Gbps QSFP+ port) it
> doesn't even detect the connexion (port led light off on the switch) and we
> cannot reach the N320 from the server.
>
> Do you have an idea what could cause the issue?
>
>
> Thank you in advance!
>
>
> David Truan
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007c1f7805948fd155
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi David,<br><br>Can you try loading the XQ FPGA image =
onto the N320? When using the XG image, only the onboard SFP 0,1 adapters a=
re used. When using the XQ image, two lanes of the QSFP will be used (0,1).=
 A table showing what protocols / ports per FPGA image can be found here [0=
].<br><br>[0] - <a href=3D"https://files.ettus.com/manual/page_usrp_n3xx.ht=
ml#n3xx_rh_sfp_protocols">https://files.ettus.com/manual/page_usrp_n3xx.htm=
l#n3xx_rh_sfp_protocols</a><br><br>Regards,<br>Nate Temple</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct=
 9, 2019 at 7:33 AM Truan David via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Hi everyone,<br>
<br>
We are currently trying to connect the N320 (configured with the XG image) =
to one of our server using the QSFP+ interface through a switch (FS S5900-2=
4S4T2Q). The server is equipped with 40Gbps QSFP+ interface and the connexi=
on works when connecting directly by QSFP+ without the switch in between.<b=
r>
<br>
However when connecting it to the switch (to a 40Gbps QSFP+ port) it doesn&=
#39;t even detect the connexion (port led light off on the switch) and we c=
annot reach the N320 from the server.<br>
<br>
Do you have an idea what could cause the issue?<br>
<br>
<br>
Thank you in advance!<br>
<br>
<br>
David Truan<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000007c1f7805948fd155--


--===============8254008911939428214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8254008911939428214==--

