Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FA331D30D
	for <lists+usrp-users@lfdr.de>; Wed, 17 Feb 2021 00:40:22 +0100 (CET)
Received: from [::1] (port=56440 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lC9x4-0004Vj-Ul; Tue, 16 Feb 2021 18:40:18 -0500
Received: from mail-oo1-f52.google.com ([209.85.161.52]:33461)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lC9x1-0004SL-87
 for usrp-users@lists.ettus.com; Tue, 16 Feb 2021 18:40:15 -0500
Received: by mail-oo1-f52.google.com with SMTP id f1so2688137oou.0
 for <usrp-users@lists.ettus.com>; Tue, 16 Feb 2021 15:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V2np0O+sey3239J9j00zdbXZ6vhREKxclxN6Qx29RUw=;
 b=RXoc2KZz1B2yMQ9aaoE5eUbRbqUL4D8SZgdl7V0essWpWDO8l4qT7K6WwKQ1S7v4Bv
 Mn9S9b3oyuUHaXHiCXD7w2x5ONQFQQygdnNqqcKNRPOQvh6lIStdBIITtWo89Ybtltm7
 Q0sn5wsJgHwjGSBJoag3AtZcg+uhrHe6VD32s4Y/1UCK9ZKxd0pe4EKV2FxSeAl3IHKT
 5FuDY1P+lTYdKNb6jUe321qmu1lSFFzLopATpX5c7DiCVsfg/EkWX6pXFTzzmsBPFxFB
 Beiwg/tNJWhmN3fhu8lY3zLZTmVg2M3/PkeQSqSy9Zq/3MdJ5i1RZf0W5ytWobWOSGIr
 XKQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V2np0O+sey3239J9j00zdbXZ6vhREKxclxN6Qx29RUw=;
 b=blUEerXhmRX7gKGmgLgYOYT9l19/Kkh5CifpUQTvqLMN9H4KyVK+TULKA/n7+As+hf
 L8uGj05TpeWsabTe26EW+MkZIidLoJuq3oPfjZ2b1/z53TSe7DY7X+00FU/kZMxrixzM
 Q2EpUIEuC8MxQvwGVjou9ZXb1W/1wPJlo+3/xBJ+RwWb202L0VQhGUTIejSeDPdDvOSo
 w4WuXN0QAC7e9yI3FT6h0zHXHdywbsxAvlB6xMyPcOmm9GeFcsLY34yyx217b4V0Xrsf
 spWKQNdSkdkcFO3G9Q5FGY5ftpIFSZIdWHZX3F/lnO1eogUOEFcmBs27w1gDt+Hu4oPR
 C2pw==
X-Gm-Message-State: AOAM53369VSjmtmSqtXbtAy94uilWN6yStl5yp7Uu7D+2QU1koG6puPE
 jT42Eua9wMLqbrpdfV+B7lEJ/U4KfybvwOVd0fj568dk0rsiPw==
X-Google-Smtp-Source: ABdhPJzPWQonOBDhy4YeL6Du22iTFFaRkwT5mTb1PUNHtQQ4haarx4jdsX7HKyM/BC1OOBUzKPP6hchMjPxb8j1Ycqo=
X-Received: by 2002:a4a:751a:: with SMTP id j26mr15771771ooc.68.1613518774273; 
 Tue, 16 Feb 2021 15:39:34 -0800 (PST)
MIME-Version: 1.0
References: <CACDReSwOo22jYHsz3fu38yqH+GP1MJjnRt1cUFsFPheyd3c=Hw@mail.gmail.com>
 <cd08ceef-9281-2523-cf1b-cb890b6cfb34@ettus.com>
In-Reply-To: <cd08ceef-9281-2523-cf1b-cb890b6cfb34@ettus.com>
Date: Tue, 16 Feb 2021 18:39:23 -0500
Message-ID: <CAB__hTRkvLN6biOObb6UKS0wP6QMsegP0pKwtFx7bVv+FDYjYg@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Getting sensor data using device3 usrp on E310
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1347810953672529475=="
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

--===============1347810953672529475==
Content-Type: multipart/alternative; boundary="000000000000614dee05bb7c9d89"

--000000000000614dee05bb7c9d89
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ofer,
The mb_controller class is a UHD 4.0 addition.  Are you using UHD 4.0 or
3.15?  If using UHD 4.0 you can get access to the mb_controller through the
get_mb_controller() function of any rfnoc block or the graph.  If using UHD
3.15, you likely need to access via the tree as Marcus said. I see that in
my 3.15 code, I had the following function.

uhd::sensor_value_t get_mboard_sensor(const std::string &name, size_t mboar=
d)
override
{
return _tree->access<uhd::sensor_value_t>(mb_root(mboard) / "sensors" / nam=
e
).get();
}

On Tue, Feb 16, 2021 at 3:16 PM Marcus M=C3=BCller via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear Ofer,
>
> You're right, the get_mboard_sensor is a property of the multi_usrp class
> and logically
> doesn't "map" to the device3 class.
>
> I don't have an ultimately good solution, here, to be honest. As a ugly
> yet functional
> workaround:
>
>     auto sensor_values =3D
> my_device3_sptr->get_tree()->access<uhd::sensor_value_t>(path).get();
>
> where "path" is the path to your sensor value. To find that, try
> `uhd_usrp_probe --tree |
> grep sensors`.
>
> Best regards,
>
> Marcus
>
> DISCLAIMER: Any attached Code is provided As Is. It has not been tested o=
r
> validated as a product, for use in a deployed application or system, or f=
or
> use in hazardous environments. You assume all risks for use of the Code.
> Use of the Code is subject to terms of the licenses to the UHD or RFNoC
> code with which the Code is used. Standard licenses to UHD and RFNoC can =
be
> found at https://www.ettus.com/sdr-software/licenses/.
>
> NI will only perform services based on its understanding and condition
> that the goods or services (i) are not for the use in the production or
> development of any item produced, purchased, or ordered by any entity wit=
h
> a footnote 1 designation in the license requirement column of Supplement
> No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
> company is not a party to the transaction.  If our understanding is
> incorrect, please notify us immediately because a specific authorization
> may be required from the U.S. Commerce Department before the transaction
> may proceed further.
>
> On 16.02.21 08:33, Ofer Saferman via USRP-users wrote:
> > Hello,
> >
> > I would like to access sensor data like "gps_time",
> "ref_locked","gps_locked" using a
> > USRP device defined as "uhd::device3::sptr usrp" on a E310 unit.
> > All the examples are for USRP devices defined as
> "uhd::usrp::multi_usrp::sptr usrp".
> >
> > I searched the documentation and tried all possible combinations also
> using the
> > "uhd::rfnoc::radio_ctrl::sptr" object without any success.
> > I can see the method exists for multi_usrp and mb_controller objects. I
> know that the
> > mb_controller is somewhere accessible either through radio_ctrl object
> or the device3
> > object but I don't know how to get to it.
> >
> > Regards,
> > Ofer Saferman
> >
> > --
> > This message has been scanned for viruses and
> > dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
> is
> > believed to be clean.
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000614dee05bb7c9d89
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Ofer,<div>The mb_controller class is a=
 UHD 4.0 addition.=C2=A0 Are you using UHD 4.0 or 3.15?=C2=A0 If using UHD =
4.0 you can get access to the mb_controller through the get_mb_controller()=
 function of any rfnoc block or the graph.=C2=A0 If using UHD 3.15, you lik=
ely need to access via the tree as Marcus said. I see that in my 3.15 code,=
 I had the following function.</div><div><br></div><div><div style=3D"color=
:rgb(0,0,0);background-color:rgb(255,255,254);font-family:SFMono-Medium,&qu=
ot;SF Mono&quot;,&quot;Segoe UI Mono&quot;,&quot;Roboto Mono&quot;,&quot;Ub=
untu Mono&quot;,Menlo,monospace;font-size:13px;line-height:18px;white-space=
:pre"><div>    <span style=3D"color:rgb(32,32,32)">uhd</span>::<span style=
=3D"color:rgb(32,32,32)">sensor_value_t</span> <span style=3D"color:rgb(32,=
32,32)">get_mboard_sensor</span>(<span style=3D"color:rgb(9,30,66);font-wei=
ght:bold">const</span> <span style=3D"color:rgb(32,32,32)">std</span>::<spa=
n style=3D"color:rgb(32,32,32)">string</span> &amp;<span style=3D"color:rgb=
(32,32,32)">name</span>, <span style=3D"color:rgb(32,32,32)">size_t</span> =
<span style=3D"color:rgb(32,32,32)">mboard</span>) <span style=3D"color:rgb=
(9,30,66);font-weight:bold">override</span></div><div>    {</div><div>     =
   <span style=3D"color:rgb(9,30,66);font-weight:bold">return</span> <span =
style=3D"color:rgb(32,32,32)">_tree</span>-&gt;<span style=3D"color:rgb(32,=
32,32)">access</span>&lt;<span style=3D"color:rgb(32,32,32)">uhd</span>::<s=
pan style=3D"color:rgb(32,32,32)">sensor_value_t</span>&gt;(<span style=3D"=
color:rgb(32,32,32)">mb_root</span>(<span style=3D"color:rgb(32,32,32)">mbo=
ard</span>) / <span style=3D"color:rgb(191,38,0)">&quot;sensors&quot;</span=
> / <span style=3D"color:rgb(32,32,32)">name</span>).<span style=3D"color:r=
gb(32,32,32)">get</span>();</div><div>    }</div></div></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 16=
, 2021 at 3:16 PM Marcus M=C3=BCller via USRP-users &lt;<a href=3D"mailto:u=
srp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Dear Ofer,<br>
<br>
You&#39;re right, the get_mboard_sensor is a property of the multi_usrp cla=
ss and logically<br>
doesn&#39;t &quot;map&quot; to the device3 class.<br>
<br>
I don&#39;t have an ultimately good solution, here, to be honest. As a ugly=
 yet functional<br>
workaround:<br>
<br>
=C2=A0=C2=A0=C2=A0 auto sensor_values =3D my_device3_sptr-&gt;get_tree()-&g=
t;access&lt;uhd::sensor_value_t&gt;(path).get();<br>
<br>
where &quot;path&quot; is the path to your sensor value. To find that, try =
`uhd_usrp_probe --tree |<br>
grep sensors`.<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at <a href=3D"https://www.ettus.com/sdr-software/licenses/" rel=3D"noref=
errer" target=3D"_blank">https://www.ettus.com/sdr-software/licenses/</a>.<=
br>
<br>
NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.=C2=A0 If our understanding is incorrect, p=
lease notify us immediately because a specific authorization may be require=
d from the U.S. Commerce Department before the transaction may proceed furt=
her.<br>
<br>
On 16.02.21 08:33, Ofer Saferman via USRP-users wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I would like to access sensor data like &quot;gps_time&quot;, &quot;re=
f_locked&quot;,&quot;gps_locked&quot; using a<br>
&gt; USRP device defined as &quot;uhd::device3::sptr usrp&quot; on a E310 u=
nit.<br>
&gt; All the examples are for USRP devices defined as &quot;uhd::usrp::mult=
i_usrp::sptr usrp&quot;.<br>
&gt;<br>
&gt; I searched the documentation and tried all possible combinations also =
using the<br>
&gt; &quot;uhd::rfnoc::radio_ctrl::sptr&quot; object without any success.<b=
r>
&gt; I can see the method exists for multi_usrp and mb_controller objects. =
I know that the<br>
&gt; mb_controller is somewhere accessible either through radio_ctrl object=
 or the device3<br>
&gt; object but I don&#39;t know how to get to it.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Ofer Saferman<br>
&gt;<br>
&gt; -- <br>
&gt; This message has been scanned for viruses and<br>
&gt; dangerous content by *MailScanner* &lt;<a href=3D"http://www.mailscann=
er.info/" rel=3D"noreferrer" target=3D"_blank">http://www.mailscanner.info/=
</a>&gt;, and is<br>
&gt; believed to be clean.<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000614dee05bb7c9d89--


--===============1347810953672529475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1347810953672529475==--

