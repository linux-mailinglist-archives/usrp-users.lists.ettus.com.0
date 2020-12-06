Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 621612D012F
	for <lists+usrp-users@lfdr.de>; Sun,  6 Dec 2020 07:17:30 +0100 (CET)
Received: from [::1] (port=51486 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klnMN-0005T9-CZ; Sun, 06 Dec 2020 01:17:27 -0500
Received: from mail-io1-f47.google.com ([209.85.166.47]:39786)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <gilad@apolloshield.com>)
 id 1klnMJ-0005Oi-7x
 for usrp-users@lists.ettus.com; Sun, 06 Dec 2020 01:17:23 -0500
Received: by mail-io1-f47.google.com with SMTP id d9so1577719iob.6
 for <usrp-users@lists.ettus.com>; Sat, 05 Dec 2020 22:17:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=apolloshield.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z3Ybfmu7SdN7X2Qb1dfigzfHjhNf2z+IluDJpD3aJyE=;
 b=NGvHbI0diYHXs1xXdqBkTuOK+qoF9r4yLfZi4ueTjJ5xHLAIhB7Ee9L1jCIe6cKkOt
 3yl+ShPc3wXk3digWVY8pX4uF2mLH3Nq+FlUw8Wc6Wi9iNukbSPVFnikzm+C74TbRZqV
 44ClCyPA//cPP3n16rRdi5ORT4Mjvlk6FjDxyBoY++HfpDf+FGPoc/K/1Vq44biS/OBI
 tzsWIEpqWOO8ImiIT+sqVyFgelV7tWFp6nxhfE62kZNP+QRDA9eSAAVd0zc+9TxNCmou
 k7SGtOwaf0dRGDGTtq4oDP+QuMjY+3tZZ04TNWdbZfyktjia/lOvCcDmQlBhOEKNL1LC
 yVoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z3Ybfmu7SdN7X2Qb1dfigzfHjhNf2z+IluDJpD3aJyE=;
 b=VeNqmSVlTHkZhhZnVECRYdlVbbXEgbTataCXi2yetvdfF2crsOE5M+3HLgO+VnzGEG
 aQTVciQDUPp0vlBCshL3TC5nvBiUh8+gHHjyf4yN+75iL0/WkgYbaK6veKdFNwrTqeL1
 +LsK2HqkHW0vnRtYuG76yFZotIDN+lLKqXeSWvXr0wJK5ZU1SRtm5WWyvKFz/A32kOuc
 aRqDPwd4PPJqquRRPRH9pLQgIgnSI4fdRkbVwDDptzDvk+u1wcvgfSetDd8/St1Ffikr
 AlAqlWsM2L0Mrisx7VkCPPDLBf9pHtmAB22BiKmEETFgHIftdffNsl9CYMrXtjI6q77C
 iwDw==
X-Gm-Message-State: AOAM533Wg+/sXBd3oLqwqbzZkolOQcTNJ798esDLY7ukt4f98Qf8cjcX
 oqT1UyJFuOToGiOx1cShHwCD6Kyq24FfWeBQETSNKA==
X-Google-Smtp-Source: ABdhPJypLJO8DepKHWWWY1irIjZ73rFGS80J/V5dgWLfCsU1dLgNVHKvKJjW4nao7kBJbbOg2OnhS9vp8czwH/REzv0=
X-Received: by 2002:a05:6602:441:: with SMTP id
 e1mr12534471iov.82.1607235401723; 
 Sat, 05 Dec 2020 22:16:41 -0800 (PST)
MIME-Version: 1.0
References: <CABfZwcdtAKu7rtAu=6yLB4WJY1Amt2svXjF7zygULdLEhKZmCA@mail.gmail.com>
 <aba9b85d-e604-1fb0-b305-c3f5e7ec840b@ettus.com>
 <CABfZwcdR3+GS2ED95E6TGmn32UuLo+ZytgLQTaG1R109XEDszw@mail.gmail.com>
In-Reply-To: <CABfZwcdR3+GS2ED95E6TGmn32UuLo+ZytgLQTaG1R109XEDszw@mail.gmail.com>
Date: Sun, 6 Dec 2020 08:16:05 +0200
Message-ID: <CAF4UVpANs2Uh9_arOGB=Sjehn2YFwf_p=dvEEU9A-50h7FS22A@mail.gmail.com>
To: Mikio Fukushima <mikio@dolphinsystem.jp>
Subject: Re: [USRP-users] Can I detect a wiretype of USB device?
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
From: "Gilad Beeri \(ApolloShield\) via USRP-users"
 <usrp-users@lists.ettus.com>
Reply-To: "Gilad Beeri \(ApolloShield\)" <gilad@apolloshield.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2192188931378716002=="
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

--===============2192188931378716002==
Content-Type: multipart/alternative; boundary="00000000000030c62f05b5c5a776"

--00000000000030c62f05b5c5a776
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Linux,
You can also run "lsusb -v -d2500:" (2500 for Ettus) and inspect the
"bcdUSB" line.

Regards,

Gilad Beeri
CTO, ApolloShield Anti-Drone Systems
www.apolloshield.com
gilad@apolloshield.com

=E1=90=A7

On Wed, Dec 2, 2020 at 11:16 AM Mikio Fukushima via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Marcus,
> Thank you for your mail.
>
> I done based on your information as follows.
>
> >> code here <<
>
> uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(args);
>
> string devicename =3D
> usrp->get_device()->get_tree()->access<string>("/mboards/0/name").get();
> double maxrate =3D
> usrp->get_device()->get_tree()->access<double>("/mboards/0/link_max_rate"=
).get();
> if((devicename =3D=3D "B200" or devicename =3D=3D "B200mini") and maxrate=
 <
> 500000000)
> {
>
> }
>
> >> code end <<
>
> Thank you.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000030c62f05b5c5a776
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">On =
Linux,</div><div class=3D"gmail_default" style=3D"font-size:small">You can =
also run &quot;lsusb -v -d2500:&quot; (2500 for Ettus) and inspect the &quo=
t;bcdUSB&quot; line.</div><div class=3D"gmail_default" style=3D"font-size:s=
mall"><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div di=
r=3D"ltr"><div><div dir=3D"ltr">







<div style=3D"font-family:sans-serif;font-size:13px"><div><font size=3D"2">=
Regards,</font></div><div><font size=3D"2"><br></font></div></div><div styl=
e=3D"font-family:sans-serif;font-size:small"><span style=3D"font-size:13px"=
>Gilad Beeri</span></div><div style=3D"font-family:sans-serif;font-size:sma=
ll"><div style=3D"display:inline"></div><span style=3D"font-size:13px"></sp=
an><span style=3D"font-size:13px">CTO, ApolloShield Anti-Drone Systems</spa=
n></div><div style=3D"font-family:sans-serif;font-size:small"><a href=3D"ht=
tp://www.apolloshield.com/" style=3D"color:rgb(17,85,204);font-size:13px" t=
arget=3D"_blank">www.apolloshield.com</a></div><div style=3D"font-family:sa=
ns-serif;font-size:small"><span style=3D"font-size:13px"><a href=3D"mailto:=
gilad@apolloshield.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">gi=
lad@apolloshield.com</a></span></div></div></div></div></div></div></div></=
div></div></div><br></div><div hspace=3D"streak-pt-mark" style=3D"max-heigh=
t:1px"><img alt=3D"" style=3D"width:0px;max-height:0px;overflow:hidden" src=
=3D"https://mailfoogae.appspot.com/t?sender=3DaZ2lsYWRAYXBvbGxvc2hpZWxkLmNv=
bQ%3D%3D&amp;type=3Dzerocontent&amp;guid=3D877b6a39-e7a7-4798-a735-13434c7d=
5525"><font color=3D"#ffffff" size=3D"1">=E1=90=A7</font></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 2, 202=
0 at 11:16 AM Mikio Fukushima via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"=
ltr">Hi Marcus,<div>Thank you for your mail.</div><div><br></div><div>I don=
e based on your information as follows.<br></div><div><br></div><div>&gt;&g=
t; code here &lt;&lt;</div><div><br></div><div>uhd::usrp::multi_usrp::sptr =
usrp =3D uhd::usrp::multi_usrp::make(args);<br></div><div><br></div><div>st=
ring devicename =3D usrp-&gt;get_device()-&gt;get_tree()-&gt;access&lt;stri=
ng&gt;(&quot;/mboards/0/name&quot;).get();<br>double maxrate =3D usrp-&gt;g=
et_device()-&gt;get_tree()-&gt;access&lt;double&gt;(&quot;/mboards/0/link_m=
ax_rate&quot;).get();<br>if((devicename =3D=3D &quot;B200&quot; or devicena=
me =3D=3D &quot;B200mini&quot;) and maxrate &lt; 500000000)<br>{</div><div>=
<br></div><div>}</div><div><div><br></div><div>&gt;&gt; code end &lt;&lt;</=
div></div><div><br></div><div>Thank you.</div><div><br></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000030c62f05b5c5a776--


--===============2192188931378716002==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2192188931378716002==--

