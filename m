Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8304E694854
	for <lists+usrp-users@lfdr.de>; Mon, 13 Feb 2023 15:42:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5A510384509
	for <lists+usrp-users@lfdr.de>; Mon, 13 Feb 2023 09:42:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676299361; bh=xcRGZ+TZTY1uJ7nm07aUMpE5ycY62h1PTgyF8+hbRt0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=H6lplXnxvUWRu6q/A3zJQEWYDICluR+DD0xhakJ8t5miHLQjLksSaFyrBS03a9ulB
	 XYrE9sFI0TABKX3Xqjo98fqL3BhHqEXgD/Y2tJqiVVz11n0HUIkKdHhuyv9szX/K/6
	 dbUFOTLSbsyTk33is9WgTiX9oTCq47RTw7fC7SGW+nvf5MEyUyZwxjHDnwbJ7ZMd9X
	 t/KKQ5tFWFhhJD9MZTf4XZ+LUMOBp6clufvg3ZU7TCCSYZ0JYFkBwRTK55SacgHto+
	 Yv5rcgvoqmx/enF297dtlz9DQoC5Mv/9xeULr+QIWalcvQvIe+4ukild+Rn/dsx5kV
	 T75RON75Xwguw==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 81AEE380877
	for <usrp-users@lists.ettus.com>; Mon, 13 Feb 2023 09:42:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="jdQe0Yqp";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id cq19so10472784edb.5
        for <usrp-users@lists.ettus.com>; Mon, 13 Feb 2023 06:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JX5CT2JO0gSYNOGPh0nY2lE9+/qxljIlZgDvZw2mmlo=;
        b=jdQe0YqpuAslXbEfD8crAmzfJvcP0iF+9Ymweb7yu6F0oVvUffX1uf1PNPrc8W2jk/
         puRD4LemvqJtn57jIlpEjBBwrAslwnBVWx+pPvb+q4XYWiqfJshgs4GyEJzsqCDscAca
         dGkwCxEzOsC1tGrq+cNII7uEqNyMsBw0h7KP8O/0FuDcTfaieYY7UcxRHBi+khTew9x6
         4HO5n+2Fnivq3qA+fppCmuEzDOIqyXKSqQxVkL7XeijlDCKI4xwEAfjtBtmLxH1MBxGu
         0Q6ZWocnTOn/zWXXVWzSzEnKNx0si/tdS6JlY/DdEsyhcL3YKifWyqGXMLkhxtY0ev0j
         5gSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JX5CT2JO0gSYNOGPh0nY2lE9+/qxljIlZgDvZw2mmlo=;
        b=X7AVIu2c+TuZhbgj7iLwPSkkb4V83Gu4Egz0uEi0zb0BZSpRmKNA1MScNW/y8Jr9SS
         k7aULfuQUyFoXdZwF6Edwv/5WBfWtwNBvDSM/NB2f1zmmMasGD1aMRtgXxgzA4n0W/vW
         b4wiK6L5yocsvPWf3+K9CqIMXUPKNQPNsfveXHCj5ajtRng5HKEK/65e1GQFmsct9cSE
         xp6wOuHlW0WEeuzOet3NNG3P4LKCbfVAF00dKxe7E2YSAk0U4c+v2oA7hXjLNRPQolxz
         7R3xnrTShK+m+14VxKmLE59dhy6OQnetRl1lSx9geCRaiVv+5GOBhymhf+TrUtKDftMX
         6TQA==
X-Gm-Message-State: AO0yUKUjGAn8qj6wpARfh/4OcDnIYhXKdHfCsAzbTUYO4FyDKrQLB/Cj
	zFkbgxuTuI6whaZOxCtGIGTEuF2GJ5HIahF2/mlHAYJvf+QzHA==
X-Google-Smtp-Source: AK7set82L/wOOHaPscYhR8702uMOIQ35HSdeM3AhngO/k4q6VWOGm0P5m2yV5IGXOege/yzTEi7jIPqFxdakSAAbO2Q=
X-Received: by 2002:a05:6402:f11:b0:4ab:4cf5:591 with SMTP id
 i17-20020a0564020f1100b004ab4cf50591mr5116867eda.3.1676299325243; Mon, 13 Feb
 2023 06:42:05 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB9126C2EF985D05F956DC479EECDE9@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB9126C2EF985D05F956DC479EECDE9@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 13 Feb 2023 09:41:54 -0500
Message-ID: <CAB__hTQPb5e_+oO99yBVxo89LV0h+0kAqt8d8v5AWtU8Z-C8gg@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: G45AA3QBSI3YBHQRTE433G7T23UVYBJN
X-Message-ID-Hash: G45AA3QBSI3YBHQRTE433G7T23UVYBJN
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Minimizing latency with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G45AA3QBSI3YBHQRTE433G7T23UVYBJN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4568793136758973642=="

--===============4568793136758973642==
Content-Type: multipart/alternative; boundary="000000000000d1eb8d05f495d94e"

--000000000000d1eb8d05f495d94e
Content-Type: text/plain; charset="UTF-8"

Hi Eugene,
I don't have any suggestions regarding reducing the latency as you
described. But, is it possible for you to move your data processing from
the c++ to the FPGA?  Using the X310, I have built a "repeater" capability
that modifies the stream time stamp (tx_time = rx_time +
register-controlled-offset), where the latency can be about 40 usec I think
(perhaps it is less - I don't recall exactly).
Rob

On Fri, Feb 10, 2023 at 5:22 PM Eugene Grayver <eugene.grayver@aero.org>
wrote:

> Hello,
>
> I have a custom C++ app that takes in an input stream, modifies it, and
> outputs the modified version.  I am trying to minimize the latency.  To
> achieve fixed latency, I set the start time on the RX and TX streamers
> (tx_time = rx_time + latency).  I then change latency until I start getting
> underflows.
>
> The system is a i9-13900K running at 5.4 GHz.  I am using DPDK with all
> relevant kernel parameters ( iommu=pt intel_iommu=on hugepages=1024
> isolcpus=1-7 nohz_full=1-7 rcu_nocbs=1-7 intel_idle.max_cstate=0).  DPDK
> gets two dedicated cores.  I have a core dedicated to taking data from the
> multi_usrp, another core for processing, another to push data to
> multi_usrp.
>
>  iommu=pt intel_iommu=on hugepages=1024 isolcpus=1-7
> nohz_full=1-7 rcu_nocbs=1-7 intel_idle.max_cstate=0
>
> I can consistently get no underflows operating at 100 Msps with 1ms
> latency.  However, going below 1ms causes underflows (a few at 500 us, more
> at 100 us).
>
> Are there any ideas I have not considered?
>
> Thanks.
>
>
> ________________________
>
> Eugene Grayver, Ph.D.
> Aerospace Corp., Principal Engineer
> Tel: 310.336.1274
> ________________________
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d1eb8d05f495d94e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Eugene,<div>I don&#39;t have any sugge=
stions regarding reducing the latency as you described. But, is it possible=
 for you to move your data processing from the c++ to the FPGA?=C2=A0 Using=
 the X310, I have built a &quot;repeater&quot; capability that modifies the=
 stream time stamp (tx_time =3D rx_time + register-controlled-offset), wher=
e the latency can be about 40 usec I think (perhaps it is less - I don&#39;=
t recall exactly).</div><div>Rob</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 10, 2023 at 5:22 PM Eugen=
e Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver@aer=
o.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div class=3D"msg7565907091663764382">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I have a custom C++ app that takes in an input stream, modifies it, and out=
puts the modified version.=C2=A0 I am trying to minimize the latency.=C2=A0=
 To achieve fixed latency, I set the start time on the RX and TX streamers =
(tx_time =3D rx_time + latency).=C2=A0 I then change
 latency until I start getting underflows.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
The system is a i9-13900K running at 5.4 GHz.=C2=A0 I am using DPDK with al=
l relevant kernel parameters (=C2=A0iommu=3Dpt intel_iommu=3Don hugepages=
=3D1024 isolcpus=3D1-7 nohz_full=3D1-7=C2=A0rcu_nocbs=3D1-7 intel_idle.max_=
cstate=3D0).=C2=A0 DPDK gets two dedicated cores.=C2=A0 I have a core dedic=
ated
 to taking data from the multi_usrp, another core for processing, another t=
o push data to multi_usrp.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
=C2=A0iommu=3Dpt intel_iommu=3Don hugepages=3D1024 isolcpus=3D1-7 nohz_full=
=3D1-7=C2=A0rcu_nocbs=3D1-7 intel_idle.max_cstate=3D0
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I can consistently get no underflows operating at 100 Msps with 1ms latency=
.=C2=A0 However, going below 1ms causes underflows (a few at 500 us, more a=
t 100 us).</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Are there any ideas I have not considered?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Thanks.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_7565907091663764382Signature">
<div>
<div id=3D"m_7565907091663764382divtagdefaultwrapper" dir=3D"ltr" style=3D"=
color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif;font-size:1=
2pt;background-color:rgb(255,255,255)">
<p><span style=3D"color:black;font-family:Arial,sans-serif;font-size:10pt">=
<span id=3D"m_7565907091663764382ms-rterangepaste-start"></span><span style=
=3D"color:rgb(0,0,0);font-family:Arial,sans-serif;font-size:13.33px">______=
__________________</span><span id=3D"m_7565907091663764382ms-rterangepaste-=
end"></span><br>
</span></p>
<p><span style=3D"color:black;font-family:Arial,sans-serif;font-size:10pt">=
Eugene Grayver, Ph.D.<br>
Aerospace Corp., Principal Engineer<br>
Tel: 310.336.1274<br>
________________________</span><br>
</p>
</div>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>

--000000000000d1eb8d05f495d94e--

--===============4568793136758973642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4568793136758973642==--
