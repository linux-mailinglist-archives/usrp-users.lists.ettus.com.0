Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 006B61C49B7
	for <lists+usrp-users@lfdr.de>; Tue,  5 May 2020 00:39:08 +0200 (CEST)
Received: from [::1] (port=45202 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jVjju-0003i8-JY; Mon, 04 May 2020 18:39:06 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:42578)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jVjjp-0003bE-S0
 for usrp-users@lists.ettus.com; Mon, 04 May 2020 18:39:01 -0400
Received: by mail-ot1-f52.google.com with SMTP id m18so114868otq.9
 for <usrp-users@lists.ettus.com>; Mon, 04 May 2020 15:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m1hVXnswKUoaNhA54hgq92E643vObJpLU3JA3DX2zzI=;
 b=XuI5YsE/jLCmESJcbA5I5pvtMew9bDd6zg6t9GBTsYHM/nS1c0zU+z2tMhVuSZcS7K
 yDdTaT/joL2JVQTZ88u03zx26U+s/LfnlsrXky5G5dzNXFC2A0NAe3tX8D4kQDF1d2FI
 gDslpy5bCEXQBSzOTEpoapcpTg4Ee26q6rZlv2u2ZIeqb1v+sKzfdVBdoBr7NYmqZ8V8
 +Gdc/XPblJofATLE5BC/RuCIzqiM0Cr4ko7bcTOQS0lvLuIvKu3MpDvHuv9og9POmTUN
 TecGJV82GqGFlLjoX7ZBQNKk8NJELI6Vae+1scV0qlAs4ddxqyXqHUrZVSyVQLJWGAiu
 /NYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m1hVXnswKUoaNhA54hgq92E643vObJpLU3JA3DX2zzI=;
 b=c5cmq/mOs+D3zEBFW0q5ekkxy1e32o64Huc6tOPKmWEfheP5qA5lgQTKmUF3P0wwVu
 1BEYd5aCgnCP15K69NM9EBQ9A4Xq9vN6UKNLm9/Anlei4CA7fiprJBqdKr0aixmA4eD/
 aMkjvktCSJXCtxMMC4gWF0GenRbKOH4ipJfDcUaItGvI0sNBVkwKekGReRQbX3VrBNQB
 3f/VhFgB6NCJWPb+fS6Tnmiqz6mbAV3dRM5+FGDjZjKCr9LAxaNLNPtWbpMJ/w90qCqo
 YsOG63au4CPG+E37mc4WBoMq/AccpX+Q/l0sLvdkkdoFg05/zNBCO9ksFPJVDOw3gWaY
 j/uA==
X-Gm-Message-State: AGi0PuYL5lQsMTBLgC2JnU6aDCZpKS8NeFhDAi21Uzjz8r4pZVpxxUSN
 GR5qr1khOxFJ8tlBnyzbrUdJKYKyOVbP6a32xiCrqYc/zb0=
X-Google-Smtp-Source: APiQypLshPPa7Yh42OvgapSO7WfJQvWsvmhmq+C98bLFN+xNf8ofkvWcdNFVyFwr9oecWLEL2/VaMxamTK81FeJ9bbM=
X-Received: by 2002:a05:6830:4db:: with SMTP id
 s27mr8563197otd.301.1588631901075; 
 Mon, 04 May 2020 15:38:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxtCj6iQymGZ9zNbGWxBjybOC=6GN7=OzpA2HvkiiYTbzg@mail.gmail.com>
 <CAB__hTQt5Yaw3xYKAiw+eRRH62g_s=tDVMgQtwNcng_jW7EnSw@mail.gmail.com>
 <CAPRRyxs1omXVknwnyqs0wQzHZ=zi+yd98fqPdr2XLoM+MQXD3g@mail.gmail.com>
In-Reply-To: <CAPRRyxs1omXVknwnyqs0wQzHZ=zi+yd98fqPdr2XLoM+MQXD3g@mail.gmail.com>
Date: Mon, 4 May 2020 18:38:10 -0400
Message-ID: <CAB__hTTdK5wdo0ZDAKTELt=1SAH12CfwJQ0upo2Xa9YmUVep-A@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
Subject: Re: [USRP-users] How to set channel B reception with rfnoc USRP
 E310?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="===============6014289892534749900=="
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

--===============6014289892534749900==
Content-Type: multipart/alternative; boundary="000000000000252f3905a4da3019"

--000000000000252f3905a4da3019
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

perhaps try the same thing outside gnuradio using one of Ettus' examples
such as the following.  You can add "--help" to see other options which you
may need.  First try it with something that is working for you such as
--radio-chan 0.

rfnoc_rx_to_file --null --radio-chan 1 --ant RX2

On Mon, May 4, 2020 at 6:16 PM Ivan Zahartchuk <adray0001@gmail.com> wrote:

> Unfortunately, this method does not work. Maybe there are some other idea=
s?
>
>
> =D0=BF=D0=BD, 4 =D1=82=D1=80=D0=B0=D0=B2. 2020, 23:38 =D0=BA=D0=BE=D1=80=
=D0=B8=D1=81=D1=82=D1=83=D0=B2=D0=B0=D1=87 Rob Kossler <rkossler@nd.edu> =
=D0=BF=D0=B8=D1=88=D0=B5:
>
>> Does the 2nd argument to set_rx_antenna() indicate which radio port?  If
>> so, try setting it to 1.
>> Rob
>>
>> On Mon, May 4, 2020 at 2:02 PM Ivan Zahartchuk via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hello, I'm trying to switch between all four USRP E310 inputs. For this=
,
>>> I use the command self.uhd_rfnoc_streamer_radio_0.set_rx_antenna ("TX /
>>> RX", 0) but I can only switch in channel A. RFNoC Radio does not have t=
he
>>> set_rx_subdev_spec command. Tell me how can I switch across all 4 chann=
els?
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000252f3905a4da3019
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">perhaps try the same thing outside gnuradio using one of E=
ttus&#39; examples such as the following.=C2=A0 You can add &quot;--help&qu=
ot; to see other options which you may need.=C2=A0 First try it with someth=
ing that is working for you such as --radio-chan 0.<div><br></div><div>rfno=
c_rx_to_file --null --radio-chan 1 --ant RX2<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 4, 2020 =
at 6:16 PM Ivan Zahartchuk &lt;<a href=3D"mailto:adray0001@gmail.com">adray=
0001@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"auto"><pre dir=3D"ltr" style=3D"max-height:999999=
px;font-size:24px;line-height:28px;background-color:rgb(248,249,250);border=
:none;padding:10px 0.14em 10px 0px;margin-top:0px;margin-bottom:0px;font-fa=
mily:inherit;width:312px;white-space:pre-wrap;color:rgb(60,64,67)"><span st=
yle=3D"max-height:999999px">Unfortunately, this method does not work. Maybe=
 there are some other ideas?</span></pre></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D0=BD, 4 =D1=82=D1=80=D0=B0=
=D0=B2. 2020, 23:38 =D0=BA=D0=BE=D1=80=D0=B8=D1=81=D1=82=D1=83=D0=B2=D0=B0=
=D1=87 Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank"=
>rkossler@nd.edu</a>&gt; =D0=BF=D0=B8=D1=88=D0=B5:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Does the 2nd argument t=
o set_rx_antenna() indicate which radio port?=C2=A0 If so, try setting it t=
o 1.<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Mon, May 4, 2020 at 2:02 PM Ivan Zahartchuk via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello, I&#39;m =
trying to switch between all four USRP E310 inputs. For this, I use the com=
mand self.uhd_rfnoc_streamer_radio_0.set_rx_antenna (&quot;TX / RX&quot;, 0=
) but I can only switch in channel A. RFNoC Radio does not have the set_rx_=
subdev_spec command. Tell me how can I switch across all 4 channels?</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000252f3905a4da3019--


--===============6014289892534749900==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6014289892534749900==--

