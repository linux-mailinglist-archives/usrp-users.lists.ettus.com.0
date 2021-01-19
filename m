Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAA12FBED8
	for <lists+usrp-users@lfdr.de>; Tue, 19 Jan 2021 19:23:58 +0100 (CET)
Received: from [::1] (port=58294 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l1vfY-0008T2-Vd; Tue, 19 Jan 2021 13:23:56 -0500
Received: from mx0a-00364e01.pphosted.com ([148.163.135.74]:46444)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <mpk2138@columbia.edu>)
 id 1l1vfU-0008Kv-HA
 for usrp-users@lists.ettus.com; Tue, 19 Jan 2021 13:23:52 -0500
Received: from pps.filterd (m0167069.ppops.net [127.0.0.1])
 by mx0a-00364e01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 10JIMah0009625
 for <usrp-users@lists.ettus.com>; Tue, 19 Jan 2021 13:23:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu;
 h=mime-version :
 references : in-reply-to : from : date : message-id : subject : to : cc :
 content-type; s=pps01; bh=gJfUVdc2q8rFYPozjyEUTOZ4W8b1/1UXx02eQNDgB3Q=;
 b=AKiMru/A9rMQW6tmHWc2Q+xwE5GEZs7mm6ybc4it4dqcX5C4TfCrbG3UFmZowazHJPxz
 ol8AH3eQGCTvj4wPnrI75lC0O0j+41wmiyboOlTcjxWyrkwBU+ZfFlKZC/yf1FfNByEG
 /2/0fMGGSpRA35T0+rwi21e5ywBgWDLRhgT2CoCiIGtCi8rjh0/Iit5nEB4dHE/fXGpz
 4KpIt4zuLIabx+0ovv7LNUD2IUkfqYh33Pm10XA/3xLa+Q39/HQDfH6zOrfuJSLEP8FX
 AQ0EDlV63CSGz2mctMS/i4K29HwMaKT2TyYUR0nAcpDuCNnUPcv0lElTHxuiyJ2puotB QQ== 
Received: from sendprodmail11.cc.columbia.edu (sendprodmail11.cc.columbia.edu
 [128.59.72.19])
 by mx0a-00364e01.pphosted.com with ESMTP id 363t1qyskq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Tue, 19 Jan 2021 13:23:11 -0500
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72])
 by sendprodmail11.cc.columbia.edu (8.14.4/8.14.4) with ESMTP id 10JIN9NW033531
 (version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Tue, 19 Jan 2021 13:23:10 -0500
Received: by mail-io1-f72.google.com with SMTP id j25so37056956iog.22
 for <usrp-users@lists.ettus.com>; Tue, 19 Jan 2021 10:23:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gJfUVdc2q8rFYPozjyEUTOZ4W8b1/1UXx02eQNDgB3Q=;
 b=V9eef21/Zy3mzEcHRq0rCxRjRTkDrU8Z0pn72GTmbMpB80n6pmtJkRUwins6jUBq7c
 T8ihPWBJuunxKHNR9Qo/IheUmOzXhmmcoB02tZu5K0pfNXpSch9NogA1GSef9gojDhBT
 BTjzgcCEMu5QbHHTnNuzgDHp7iko9jdwHbfsZ5xASkkZULZ7RJmb2N5JbMAHiNtpdabB
 VnUqR8xpWUUV/XmBDbRhcYSmeF3kV/ugJgZ+/e1Ll8nTDmkKil6FyvJJ5616KSq1GFZj
 mOiwudBP0JjqaNiH2d43KnRz7+ujPEUw0RV2ZkpyiIZ3+XHzSqdHM42//HtIMl7aLPhI
 nGTQ==
X-Gm-Message-State: AOAM531+E88tDmWJ1TNOVLmvRn7UFu2y03geyZ8v9LHHK7qh7gqpJOpF
 ozJGODpWhqQfUK9OlbnTHsmY9AzYnSjWeSZSfYFY/LpVDxvddG5IfoeE/IIRxowJ9ZDeTmUQkiA
 z62R7PVPMW3/CRghZ/Z3UZSNWpEiOt4Bv/D8AqU0G6U2I
X-Received: by 2002:a92:b751:: with SMTP id c17mr4541238ilm.172.1611080589191; 
 Tue, 19 Jan 2021 10:23:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy7M4HjWBiKzArmDoLZn3VHDtFwcoc7rDJRJPSjrCOT/w4oPy/pmGt6gc+FiWc8xsdu8qulhOz5T6+PeRwLrOg=
X-Received: by 2002:a92:b751:: with SMTP id c17mr4541221ilm.172.1611080588903; 
 Tue, 19 Jan 2021 10:23:08 -0800 (PST)
MIME-Version: 1.0
References: <CAGsYvih5a3A7LR0NCV53tmyZSEeodajjGEgngVSFUfA8=9WPqw@mail.gmail.com>
 <C589B519-BC87-4D66-9254-A1CF9F77DC9B@gmail.com>
In-Reply-To: <C589B519-BC87-4D66-9254-A1CF9F77DC9B@gmail.com>
Date: Tue, 19 Jan 2021 18:22:33 +0000
Message-ID: <CAGsYvihgs=Yu4TYWznnu2E8TB0zpcc5sOXV0tTpjjfzfA=DBQw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
X-CU-OB: Yes
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2021-01-19_07:2021-01-18,
 2021-01-19 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_notspam policy=inbound score=0
 suspectscore=0 clxscore=1015
 priorityscore=1501 phishscore=0 adultscore=0 spamscore=0 mlxscore=0
 impostorscore=10 malwarescore=0 bulkscore=10 mlxlogscore=999
 lowpriorityscore=10 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101190102
Subject: Re: [USRP-users] Guaranteeing synchronous startup of X310 and N210
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
From: Manav Kohli via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Manav Kohli <mpk2138@columbia.edu>
Content-Type: multipart/mixed; boundary="===============4799095491759606211=="
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

--===============4799095491759606211==
Content-Type: multipart/alternative; boundary="00000000000034e1d205b944ee88"

--00000000000034e1d205b944ee88
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Marcus,

Thanks very much for letting me know. I had figured this would be the case
but wanted to confirm before considering some other options.

Take care,
Manav

On Tue, Jan 19, 2021 at 5:43 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> That=E2=80=99s not likely to work. Given the different internal architect=
ures of
> the two devices and different clicking schemes.
>
> For one the DDC architecture is different leading to different effective
> group delays.
>
>
>
> Sent from my iPhone
>
> > On Jan 19, 2021, at 12:33 PM, Manav Kohli via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BF
> > Dear USRP mailing list,
> >
> > Hope everyone is well. I have a GNU radio flowgraph with a USRP N210 an=
d
> USRP X310 synchronized with the Octoclock. When starting the flowgraph, I
> can see a random sample offset between the N210 and X310. As the two radi=
os
> are synchronized, the sample offset does not change for the duration of
> running the flowgraph, but it is random every time the flowgraph is
> started. This is not amenable to the time slotted system I am trying to
> work on.
> >
> > I am aware that the X310 and N210 may not be simultaneously used in a
> USRP Sink or USRP Source block (or in UHD, in a multi_usrp object). With
> this in mind, is it even possible to guarantee that the X310 and N210 hav=
e
> the same startup time, namely that they begin transmitting and receiving =
at
> exactly the same time?
> >
> > Thank you very much!
> > Manav
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000034e1d205b944ee88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Marcus,<div><br></div><div>Thanks very much for letti=
ng me know. I had figured this would be the case but wanted to confirm befo=
re considering some other options.</div><div><br></div><div>Take care,</div=
><div>Manav</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, Jan 19, 2021 at 5:43 PM Marcus D Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,2=
04,204);padding-left:1ex">That=E2=80=99s not likely to work. Given the diff=
erent internal architectures of the two devices and different clicking sche=
mes. <br>
<br>
For one the DDC architecture is different leading to different effective gr=
oup delays. <br>
<br>
<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Jan 19, 2021, at 12:33 PM, Manav Kohli via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Dear USRP mailing list,<br>
&gt; <br>
&gt; Hope everyone is well. I have a GNU radio flowgraph with a USRP N210 a=
nd USRP X310 synchronized with the Octoclock. When starting the flowgraph, =
I can see a random sample offset between the N210 and X310. As the two radi=
os are synchronized, the sample offset does not change for the duration of =
running the flowgraph, but it is random every time the flowgraph is started=
. This is not amenable to the time slotted system I am trying to work on.<b=
r>
&gt; <br>
&gt; I am aware that the X310 and N210 may not be simultaneously used in a =
USRP Sink or USRP Source block (or in UHD, in a multi_usrp object). With th=
is in mind, is it even possible to guarantee that the X310 and N210 have th=
e same startup time, namely that they begin transmitting and receiving at e=
xactly the same time?<br>
&gt; <br>
&gt; Thank you very much!<br>
&gt; Manav<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000034e1d205b944ee88--


--===============4799095491759606211==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4799095491759606211==--

