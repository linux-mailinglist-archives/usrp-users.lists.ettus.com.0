Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5A731F425
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 04:17:08 +0100 (CET)
Received: from [::1] (port=49586 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCwHx-0004gE-V7; Thu, 18 Feb 2021 22:17:05 -0500
Received: from mail-lj1-f169.google.com ([209.85.208.169]:35268)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1lCwHt-0004aN-UT
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 22:17:02 -0500
Received: by mail-lj1-f169.google.com with SMTP id a17so11741062ljq.2
 for <usrp-users@lists.ettus.com>; Thu, 18 Feb 2021 19:16:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W+5z5zSTC3Tzrd3Hz1QBQxdMMyTpc//MrmHA0Ro6QkI=;
 b=lNVmzdvsbexhEZOj9IAYSO96jS3F+U9ru6M9xE/IfftEtI2vKHsng6MA3C3A7qcYTu
 TJSOOvlOAncm7sPBv7XCalKrqXxDZOIHvqS2f6TK8sLNiwPLo5ElC8EaGCvl+qviz7Hv
 n2NV2VnhTnkv+vflHoA8hlxUNbix7kRFC9GIj8ouaIvafevQ//LxUk1Z7yxPzwCjLNuv
 JvdaFOuY9441DQ2/9E/ki9SuF5jN9uxJi1OiNMk/i8f/UP/aci2k9uqA8OzvlCtpR0UU
 FGH31eWYPrrB8Cvijw+6Hz9SU85l9fuFxgl/HPCFm265M0GrbSVA+m8rI1PpgrRZxi7K
 yX1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W+5z5zSTC3Tzrd3Hz1QBQxdMMyTpc//MrmHA0Ro6QkI=;
 b=CYsCBxpUuA7+IzkzmZBxa71BerHtVpCWpkaPuqYELhGurShYBIWT+I/JtNCpW1CjN8
 wV/gTkbOD1v7nMwPSAf9W40bmO6BaNsJCXkUzc/UYSMeqH4+pYqOSXKLPyJve5Vh3kPU
 B63uXGouVPuCnMRzBxiCjRNxn5nM1jyFCKRnANU/VH6cYS20EOxb8T+bAcDPMYYK6+Z9
 ZEQ7TJOzGVJ4D049oZKZaN9jEiE3gCGXLoO6W2f+UvXdR4bapAIz+bEZlgLhmkLLT21L
 hrITUp3EPfgDU5ibfArm6sobES/z9fK52RihDX1C/kajz5ow6tcqKRxdhDvDJqDWFzR+
 xO2w==
X-Gm-Message-State: AOAM530xX7kj12QXyJAWpNjV2xHD2AJ8u1jXZXpkI9JBFKYvnIB3GsKR
 l0eEaaHJMcNtDC8m3FTSP/KORhze6/5f4G/grvk=
X-Google-Smtp-Source: ABdhPJxAadf9ddaF1oeKB0kSXIeBen1h2dv3G74JZjWnhAdM4XES6Q5e8jI59/QavGJ0KQb4xGEFJmw00I15q/fxGyc=
X-Received: by 2002:a05:6512:696:: with SMTP id
 t22mr4074909lfe.631.1613704580518; 
 Thu, 18 Feb 2021 19:16:20 -0800 (PST)
MIME-Version: 1.0
References: <CACryqrEA9jJWATSCon3Drp-ngO0QraK7goABm0U0gTFqR_hCdg@mail.gmail.com>
 <023DC74F-683D-4FEF-AAF3-D39619E4791F@gmail.com>
In-Reply-To: <023DC74F-683D-4FEF-AAF3-D39619E4791F@gmail.com>
Date: Thu, 18 Feb 2021 20:16:09 -0700
Message-ID: <CACryqrHMw6jKS4dAF25mhAbbdWH-tLiQ5EBJ1vjc72ac96X_7g@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] x310 two UBX daughterboard receiver
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
From: Xiang Ma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xiang Ma <marxwolfs@gmail.com>
Content-Type: multipart/mixed; boundary="===============3326596550324890296=="
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

--===============3326596550324890296==
Content-Type: multipart/alternative; boundary="0000000000004b57e205bba7e097"

--0000000000004b57e205bba7e097
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Are there any python code for this? I am using the python interface.

On Thu, Feb 18, 2021 at 7:44 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Well there=E2=80=99s the rx_multi_samples example that is part of the UHD=
 source
> tree.
>
> Sent from my iPhone
>
> On Feb 18, 2021, at 9:32 PM, Xiang Ma <marxwolfs@gmail.com> wrote:
>
> =EF=BB=BF
>   Do you have any example code? I am still confused.
>
> Thank you.
>
> On Thu, Feb 18, 2021 at 5:50 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> Just create a 2-channel USRP source and specify a subdev of =E2=80=9CA:0=
 B:0=E2=80=9D.
>>
>>
>>
>> Sent from my iPhone
>>
>> On Feb 18, 2021, at 7:38 PM, Xiang Ma via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> =EF=BB=BF
>> Hi,
>>
>>     I am using a x310 USRP with two UBX daughterboards. Now I can
>> transmit and receive the signal in RF A daughterboard with command
>>     self.source.set_antenna("RX2", 0)
>>     self.sink.set_antenna("TX/RX", 0).
>>
>>     Now, I want to transmit the signal in RF A, and receive the signal i=
n
>> both RF A and RF B. It is actually 1 transmitter and 2 receivers. How ca=
n I
>> implement this? I checked the set_subdev_subdev("B", 1), but it doesn't
>> work.
>>
>> Thank you,
>>
>>
>>
>>
>> --
>> *Xiang Ma, *Ph.D. Student
>> College of Engineering
>> Utah State University
>> E-mail:marxwolfs@gmail.com
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>
> --
> *Xiang Ma, *Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com
>
>

--=20
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com

--0000000000004b57e205bba7e097
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Are there any python code for this? I am using the python =
interface.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Thu, Feb 18, 2021 at 7:44 PM Marcus D Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Well =
there=E2=80=99s the rx_multi_samples example that is part of the UHD source=
 tree.=C2=A0<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"l=
tr"><br><blockquote type=3D"cite">On Feb 18, 2021, at 9:32 PM, Xiang Ma &lt=
;<a href=3D"mailto:marxwolfs@gmail.com" target=3D"_blank">marxwolfs@gmail.c=
om</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div =
dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">=C2=A0 Do you have any example code? =
I am still confused.<div><br></div><div>Thank you.</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 18, 202=
1 at 5:50 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" =
target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Just create a 2-=
channel USRP source and specify a subdev of =E2=80=9CA:0 B:0=E2=80=9D.=C2=
=A0<div><br></div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><d=
iv dir=3D"ltr"><br><blockquote type=3D"cite">On Feb 18, 2021, at 7:38 PM, X=
iang Ma via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></blockquo=
te></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"lt=
r">Hi,<div><br></div><div>=C2=A0 =C2=A0 I am using a x310 USRP with two UBX=
 daughterboards. Now I can transmit and receive the signal in RF A daughter=
board with command</div><div>=C2=A0 =C2=A0=C2=A0self.source.set_antenna(&qu=
ot;RX2&quot;, 0)</div><div>=C2=A0 =C2=A0 self.sink.set_antenna(&quot;TX/RX&=
quot;, 0).</div><div><br></div><div>=C2=A0 =C2=A0 Now, I want to transmit t=
he signal in RF A, and receive the signal in both RF A and RF B. It is actu=
ally 1 transmitter and 2 receivers. How can I implement this? I checked the=
 set_subdev_subdev(&quot;B&quot;, 1), but it doesn&#39;t work.</div><div><b=
r></div><div>Thank you,</div><div><br></div><div><br></div><div><br clear=
=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><font face=
=3D"times new roman, serif" size=3D"4" style=3D"color:rgb(136,136,136)"><i>=
<b>Xiang Ma,=C2=A0</b></i></font><span style=3D"color:rgb(136,136,136)">Ph.=
D. Student</span><div><div style=3D"color:rgb(136,136,136)"><font color=3D"=
#444444">College of Engineering</font></div><div><font color=3D"#444444">Ut=
ah State University</font></div><div style=3D"color:rgb(136,136,136)"><font=
 color=3D"#444444">E-mail:<a href=3D"mailto:marxwolfs@gmail.com" style=3D"c=
olor:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font></div>=
</div></div></div></div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a h=
ref=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a></span><br></div></blockquote></div></div></blockquote></div><=
br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><f=
ont face=3D"times new roman, serif" size=3D"4" style=3D"color:rgb(136,136,1=
36)"><i><b>Xiang Ma,=C2=A0</b></i></font><span style=3D"color:rgb(136,136,1=
36)">Ph.D. Student</span><div><div style=3D"color:rgb(136,136,136)"><font c=
olor=3D"#444444">College of Engineering</font></div><div><font color=3D"#44=
4444">Utah State University</font></div><div style=3D"color:rgb(136,136,136=
)"><font color=3D"#444444">E-mail:<a href=3D"mailto:marxwolfs@gmail.com" st=
yle=3D"color:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></fon=
t></div></div></div></div>
</div></blockquote></div></blockquote></div><br clear=3D"all"><div><br></di=
v>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><font =
face=3D"times new roman, serif" size=3D"4" style=3D"color:rgb(136,136,136)"=
><i><b>Xiang Ma,=C2=A0</b></i></font><span style=3D"color:rgb(136,136,136)"=
>Ph.D. Student</span><div><div style=3D"color:rgb(136,136,136)"><font color=
=3D"#444444">College of Engineering</font></div><div><font color=3D"#444444=
">Utah State University</font></div><div style=3D"color:rgb(136,136,136)"><=
font color=3D"#444444">E-mail:<a href=3D"mailto:marxwolfs@gmail.com" style=
=3D"color:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font><=
/div></div></div></div>

--0000000000004b57e205bba7e097--


--===============3326596550324890296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3326596550324890296==--

