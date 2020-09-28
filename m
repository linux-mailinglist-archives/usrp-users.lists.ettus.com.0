Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4560127B71B
	for <lists+usrp-users@lfdr.de>; Mon, 28 Sep 2020 23:36:50 +0200 (CEST)
Received: from [::1] (port=40330 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kN0pB-0005NK-R4; Mon, 28 Sep 2020 17:36:45 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:41485)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <shinge.chen@gmail.com>)
 id 1kN0p7-0005IP-24
 for usrp-users@lists.ettus.com; Mon, 28 Sep 2020 17:36:41 -0400
Received: by mail-pf1-f193.google.com with SMTP id z19so2390606pfn.8
 for <usrp-users@lists.ettus.com>; Mon, 28 Sep 2020 14:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=yfb47h9tRTcmBFnlZfHaEgprfpshRGoOZwWEhFJL1FU=;
 b=l0fBnvyXxDpfgJD2ucXCe2WjLr7VC1T6muPvyEYMO/F6vd1tAwXgw5I3oMcCGJiiEy
 w7kxyum1iz0TqcAWPfTjyBo3kn285EBwu39cOtooz9kZ5Zz14PO5zPDyl+v70i3H6nHj
 MdVTXwrEL4/3SKQ+uufdvEGvXBvDHcDHNVuF5qtCPmJaTnN7Qlb7M+EbXhZj05O8FBAI
 GIaqCgz3mpAxPOWu9Spyyqjruiv+mMnaaMNCfYyL2468DrfyzAc+Un0v2ulpwLLHI76f
 jyBdrf8WfBWOaWoC8xSCwK+yunB5MjhDcClD0XoGNtjv4014lTnyt8jPRxKS8FpYnBRF
 PRIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=yfb47h9tRTcmBFnlZfHaEgprfpshRGoOZwWEhFJL1FU=;
 b=bvmHrcxCiO9kDxSj+sgZmpdsXtza8jaAjJbWLO8FIPuiQPws4nYY8eOKZ6kxydOe+u
 wqWif1P/2yyz1aiKJHmk1XjkNwZjR2pXiKpHW3l8kH6zv5nRkpHsveBHaErKccECfBtZ
 Air6L0/rQMzkf15ZpFeyFm++oTSgp+71rstSD61Qu0li0ods08WcI2W5HezK+sKy/u3c
 VDhCoyeDaqgCNGmjWhpaOdK3RieqgjCA70YUGQa8Ry5ZWYLyr+Jm3aiFe+WPIQ6lTMiu
 0o13xuXih1nTT0i0D21/eIltfOyAInLHFdhDNejK1axW+/3PLESxJQXF0aCh6XYhTIXS
 Udpg==
X-Gm-Message-State: AOAM5325SEB9J2Kr+r7JzZ+tqKFwiKGVuvoD5oafumVqKo9e61GRrxWD
 Z6FqJOP981O70/nq0shhp0CoQAcG0RWo4kk5vGPsvZbcy+k=
X-Google-Smtp-Source: ABdhPJyzdQaESztJ+CZMGEOxhtGZTDpIc1jQDmxpj0UvpHkTXAUnB2M0s281lzEDLxa2XqJVCNB6JF1CUXECp1fimQ8=
X-Received: by 2002:a17:902:a713:b029:d2:6356:8761 with SMTP id
 w19-20020a170902a713b02900d263568761mr1293866plq.77.1601328959583; Mon, 28
 Sep 2020 14:35:59 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.46.1601308803.20957.usrp-users_lists.ettus.com@lists.ettus.com>
In-Reply-To: <mailman.46.1601308803.20957.usrp-users_lists.ettus.com@lists.ettus.com>
Date: Mon, 28 Sep 2020 14:35:47 -0700
Message-ID: <CABV9QyLGYgXZQANBaLZB967VEfRTOBovZ=2po6qrrm_QCKdJkg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Segmentation fault when calling
 usrp->get_device()->get_tree()->access<bool>
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
From: Yu-Hsuan Chen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Yu-Hsuan Chen <shinge.chen@gmail.com>
Content-Type: multipart/mixed; boundary="===============6534949115487344157=="
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

--===============6534949115487344157==
Content-Type: multipart/alternative; boundary="000000000000cdf7f505b0667311"

--000000000000cdf7f505b0667311
Content-Type: text/plain; charset="UTF-8"

>
>
> Date: Mon, 28 Sep 2020 10:38:26 -0400
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] Segmentation fault when calling
>         usrp->get_device()->get_tree()->access<bool>
> Message-ID: <5F71F562.2030202@gmail.com>
> Content-Type: text/plain; charset=windows-1252; format=flowed
>
> On 09/28/2020 03:45 AM, Yu-Hsuan Chen via USRP-users wrote:
> > Hi,
> >
> > I try to build LO distribution using N321/N320 and follow the
> > https://kb.ettus.com/USRP_N320/N321_LO_Distribution
> >
> > But, I got the Segmentation fault at
> >
> usrp->get_device()->get_tree()->access<bool>("mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true);
> >
> > I am using the linux; GNU C++ version 7.5.0; Boost_106501;
> > UHD_4.0.0.HEAD-0-g90ce6062.
> >
> > Please help me to figure it out.
> >
> > Thanks,
> > YH
> >
> Is your usrp object valid at the point you make this call?
>
>
Yes, I can set frequency, rate and gain using usrp object before this call.
Only get the fault after making this call.

--000000000000cdf7f505b0667311
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><br>
Date: Mon, 28 Sep 2020 10:38:26 -0400<br>
From: &quot;Marcus D. Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail=
.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: Re: [USRP-users] Segmentation fault when calling<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp-&gt;get_device()-&gt;get_tree()-&gt;access=
&lt;bool&gt;<br>
Message-ID: &lt;<a href=3D"mailto:5F71F562.2030202@gmail.com" target=3D"_bl=
ank">5F71F562.2030202@gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed<br>
<br>
On 09/28/2020 03:45 AM, Yu-Hsuan Chen via USRP-users wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I try to build LO distribution using N321/N320 and follow the <br>
&gt; <a href=3D"https://kb.ettus.com/USRP_N320/N321_LO_Distribution" rel=3D=
"noreferrer" target=3D"_blank">https://kb.ettus.com/USRP_N320/N321_LO_Distr=
ibution</a><br>
&gt;<br>
&gt; But, I got the Segmentation fault at<br>
&gt; usrp-&gt;get_device()-&gt;get_tree()-&gt;access&lt;bool&gt;(&quot;mboa=
rds/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export&quot=
;).set(true);<br>
&gt;<br>
&gt; I am using the linux; GNU C++ version 7.5.0; Boost_106501; <br>
&gt; UHD_4.0.0.HEAD-0-g90ce6062.<br>
&gt;<br>
&gt; Please help me to figure it out.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; YH<br>
&gt;<br>
Is your usrp object valid at the point you make this call?<br><br></blockqu=
ote><div><br></div><div>Yes, I can set frequency, rate and gain using usrp =
object before this call. Only get the fault after making this call.</div><d=
iv><br></div></div></div>

--000000000000cdf7f505b0667311--


--===============6534949115487344157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6534949115487344157==--

