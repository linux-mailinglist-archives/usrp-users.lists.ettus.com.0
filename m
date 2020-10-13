Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 205EC28D258
	for <lists+usrp-users@lfdr.de>; Tue, 13 Oct 2020 18:37:59 +0200 (CEST)
Received: from [::1] (port=49134 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kSNJE-0007am-3G; Tue, 13 Oct 2020 12:37:56 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:33962)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <neel.pandeya@ettus.com>)
 id 1kSNJA-0007V7-Bb
 for usrp-users@lists.ettus.com; Tue, 13 Oct 2020 12:37:52 -0400
Received: by mail-io1-f47.google.com with SMTP id m17so23526307ioo.1
 for <usrp-users@lists.ettus.com>; Tue, 13 Oct 2020 09:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f4KwJ1ZzrbsEYY35k0Kvq4sYC2at7+wsO4+ACDHYfQU=;
 b=b3PUNJ80DpF0BI8yorMKdjdr7NOkO6u7RSA34C4nmD1EDuixeBPetp8dYi4HSqs+Zi
 oZ5P0InAlkMTiZXRA7CawmapdOqJsuNWu9kF+Hk2M0t+9AGMLjsmWLpEZV/4cNNWbETO
 s2QwAtwajUqnGE6gD6TJMXcC9q9TGsCsu0STFC5h22yunBx1eV37VSM4/uVQH2MJ2O1B
 edx4RvJcuBiOyqMxI1JJJswnv2dr7cAFennwgAZ5TfjXgMAbbTPXu/0loOErdBzc0ib4
 weWQ5JNgrWwb2GIJDUGMHgC+pZydWB2ClR9YyDgxxlBliSrx19b684dcUBI1rjhuODRf
 uftQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f4KwJ1ZzrbsEYY35k0Kvq4sYC2at7+wsO4+ACDHYfQU=;
 b=cspknPAWfJbG9YwneKBLSVHgU5WYfGy3G4pD+EkdXTuamn5/Cr9oAklLLHieM+RYAq
 yZyvKVoqLOhPbyYSqo6WUzXUFX6YlYNdPeme+PsjMr5wbivZxfT39IwXvVrPAQZNCAU0
 ocxGEsf10nFMncngXkyBABwXe3KyRshNmBDt4pha7Au+PqiyUsOOVV0jUjqTXCWi5ptV
 Nnlz8aYr1qIcSQoPIODTCt05FR1l87cy6iVE9Uz6cyLXHE80S7Z2onPFolWQIUS33+/b
 GoGJXgOF/E+iaVBzU6ZventOG/EMd0j1f/XlJh15vRQCl1QuTMKHspRSbbvTHUNakObv
 BRwQ==
X-Gm-Message-State: AOAM533udHr65Q266bNXhJ1OakSV93Ha7OsAbaMvS/c4y9CsoJc5WOCZ
 qWGo14v3QjJsun0VSxSHWdzGOt4BlIuTtl0pDE/KLY5H
X-Google-Smtp-Source: ABdhPJzrsAcEZQDSI+H6EZkfaBhHBl5kowv0MB2niSzDDBgg4zOqMFAlaNHLYmoiKuq+BTcdItGBZeAaP/gldRLD+5M=
X-Received: by 2002:a05:6638:1651:: with SMTP id
 a17mr719848jat.39.1602607031584; 
 Tue, 13 Oct 2020 09:37:11 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR19MB26682C0D9A7271A482546057A4040@DM6PR19MB2668.namprd19.prod.outlook.com>
 <CAGp1hYpMrQf6j7sTXCpFXOfsigQ6GsFNJBCipAbQhWvwKyK+yg@mail.gmail.com>
 <DM6PR19MB2668D49AD0F0F45B730E547CA4040@DM6PR19MB2668.namprd19.prod.outlook.com>
 <DM6PR19MB26689FEDF4D276221C9524D0A4040@DM6PR19MB2668.namprd19.prod.outlook.com>
In-Reply-To: <DM6PR19MB26689FEDF4D276221C9524D0A4040@DM6PR19MB2668.namprd19.prod.outlook.com>
Date: Tue, 13 Oct 2020 11:36:35 -0500
Message-ID: <CACaXmv8+wfyuk5krYHWzjPNsa_McpWk=459tiZ2t43iW7nxsNQ@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] SFP+ to RJ45 Adapter
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Content-Type: multipart/mixed; boundary="===============0022705429533381886=="
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

--===============0022705429533381886==
Content-Type: multipart/alternative; boundary="000000000000d5944f05b19006d0"

--000000000000d5944f05b19006d0
Content-Type: text/plain; charset="UTF-8"

Hello Jeff:

There are two versions of the QNAP device, one with RJ-45, and one with SFP.

It should work well out-of-the-box with Ubuntu 20.04.

https://www.qnap.com/en-us/product/qna-tb-10gbe

--Neel Pandeya



On Tue, 13 Oct 2020 at 11:20, Jeff S via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I just rered my post as well, and I should have been more clear.
>
> The Thunderbolt adapter I have has an RJ45 connector (unfortunately)
> https://www.cablematters.com/pc-1039-131-intel-certified-thunderbolt-3-to-10-gb-ethernet-adapter.aspx.
> It is not one that I asked for, just what I ended up with.  I wanted to go
> from that RJ45 (via copper?) to the SFP+ port on the X310.
>
> I like the suggestions from everyone so far, and I need to see what's
> going to fit (cost-wise).
>
> Thanks!
>
> ------------------------------
> *From:* Derek Steinkamp <derekste@gmail.com>
> *Sent:* Tuesday, October 13, 2020 10:51 AM
> *To:* Jeff S <e070832@hotmail.com>
> *Subject:* Re: [USRP-users] SFP+ to RJ45 Adapter
>
> Just re-read your post. This is what you need (assuming your thunderbolt
> 10G adapter has an SFP+ port- if not see the QNAP product)
>
> [Blue] Colored 10G SFP+ DAC Cable - Twinax SFP Cable for Ubiquiti Devices,
> 2-Meter(6.5ft)
> https://www.amazon.com/dp/B075XJXSWG/ref=cm_sw_r_cp_api_fab_1XCHFbFY9K6T6
>
> QNAP QNA-T310G1S Thunderbolt 3 to 10GbE Adaptor, Single-Port Thunderbolt 3
> to Single-Port 10GbE SFP+
> https://www.amazon.com/dp/B07KTLP44W/ref=cm_sw_r_cp_api_fab_BZCHFbCZ56488
>
> On Tue, Oct 13, 2020 at 10:43 AM Jeff S via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> I acquired a Thunderbolt 10 Gigabit adapter, and I was wondering if I
> could connect it to the SFP+ connector on my X310.
>
> Has anyone done this?  And, is there a particular SFP+ to RJ45 which works
> well?  All I see on the Ettus website is the recommendation for using the
> terminated cable and PC network adapter.
>
> Thanks,
> Jeff
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d5944f05b19006d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Jeff:</div><div class=3D"gmail_default" style=3D"font-fam=
ily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif">There=C2=A0are two versions of the QNAP device=
, one with RJ-45, and one with SFP.</div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" =
style=3D"font-family:verdana,sans-serif">It should work well out-of-the-box=
 with Ubuntu 20.04.</div><div class=3D"gmail_default" style=3D"font-family:=
verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><a href=3D"https://www.qnap.com/en-us/product/qna-=
tb-10gbe">https://www.qnap.com/en-us/product/qna-tb-10gbe</a><br></div><div=
 class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div=
><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_si=
gnature"><div dir=3D"ltr"><font face=3D"verdana, sans-serif">--Neel Pandeya=
</font><div><br></div><div><br></div></div></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 13 Oct 2020 =
at 11:20, Jeff S via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div>
<div dir=3D"ltr">
<div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I just rered my post as well, and I should have been more clear.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
The Thunderbolt adapter I have has an RJ45 connector (unfortunately) <a hre=
f=3D"https://www.cablematters.com/pc-1039-131-intel-certified-thunderbolt-3=
-to-10-gb-ethernet-adapter.aspx" id=3D"gmail-m_-2380505139817789085LPlnk" t=
arget=3D"_blank">
https://www.cablematters.com/pc-1039-131-intel-certified-thunderbolt-3-to-1=
0-gb-ethernet-adapter.aspx</a>.=C2=A0 It is not one that I asked for, just =
what I ended up with.=C2=A0 I wanted to go from that RJ45 (via copper?) to =
the SFP+ port on the X310.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I like the suggestions from everyone so far, and I need to see what&#39;s g=
oing to fit (cost-wise).</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Thanks!<br>
</div>
<div>
</div>
<br>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-2380505139817789085x_divRplyFwdMsg" dir=3D"ltr"><font s=
tyle=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>F=
rom:</b> Derek Steinkamp &lt;<a href=3D"mailto:derekste@gmail.com" target=
=3D"_blank">derekste@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, October 13, 2020 10:51 AM<br>
<b>To:</b> Jeff S &lt;<a href=3D"mailto:e070832@hotmail.com" target=3D"_bla=
nk">e070832@hotmail.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] SFP+ to RJ45 Adapter</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"auto">Just re-read your post. This is what you need (assuming y=
our thunderbolt 10G adapter has an SFP+ port- if not see the QNAP product)<=
/div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">[Blue] Colored 10G SFP+ DAC Cable - Twinax SFP Cable for =
Ubiquiti Devices, 2-Meter(6.5ft)
<a href=3D"https://www.amazon.com/dp/B075XJXSWG/ref=3Dcm_sw_r_cp_api_fab_1X=
CHFbFY9K6T6" target=3D"_blank">
https://www.amazon.com/dp/B075XJXSWG/ref=3Dcm_sw_r_cp_api_fab_1XCHFbFY9K6T6=
</a><br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">QNAP QNA-T310G1S Thunderbolt 3 to 10GbE Adaptor, Single-P=
ort Thunderbolt 3 to Single-Port 10GbE SFP+
<a href=3D"https://www.amazon.com/dp/B07KTLP44W/ref=3Dcm_sw_r_cp_api_fab_BZ=
CHFbCZ56488" target=3D"_blank">
https://www.amazon.com/dp/B07KTLP44W/ref=3Dcm_sw_r_cp_api_fab_BZCHFbCZ56488=
</a><br>
</div>
<div><br>
<div>
<div dir=3D"ltr">On Tue, Oct 13, 2020 at 10:43 AM Jeff S via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I acquired a Thunderbolt 10 Gigabit adapter, and I was wondering if I could=
 connect it to the SFP+ connector on my X310.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Has anyone done this?=C2=A0 And, is there a particular SFP+ to RJ45 which w=
orks well?=C2=A0 All I see on the Ettus website is the recommendation for u=
sing the terminated cable and PC network adapter.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Thanks,<br>
Jeff<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
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

--000000000000d5944f05b19006d0--


--===============0022705429533381886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0022705429533381886==--

