Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 617EBD5092
	for <lists+usrp-users@lfdr.de>; Sat, 12 Oct 2019 17:03:20 +0200 (CEST)
Received: from [::1] (port=34240 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iJIvO-0004DD-8X; Sat, 12 Oct 2019 11:03:18 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:41298)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1iJIvK-00046X-2g
 for usrp-users@lists.ettus.com; Sat, 12 Oct 2019 11:03:14 -0400
Received: by mail-ot1-f48.google.com with SMTP id g13so10403662otp.8
 for <usrp-users@lists.ettus.com>; Sat, 12 Oct 2019 08:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A5JI6B6ZYL08KJAcYxH0iV2o06ru5QmKL1b5sihhAj8=;
 b=oATypB4A7aHXzesFMcUxlojXKQRv514u9JpY0Uk1NiNyYojoPRhPSU5gg5oWl0FnFR
 H3wgnngkknSc4oAjnDCMpnirQ95KmjgVdh7yW1mC66FjAuUtbIJbmOlyZ6P3aymNJC/B
 pLuyuykanl1fBXuET5zRbMT45RQgF1zCSrFL+Fhmaxgq39YzegPtYSSlOm/8EMaV97Zl
 aLRDljW3ZjgJK5sobowuRmxjUIAD+hu4qZTD8tFJeS+nbpn25Z6n/WvAtd2wR/FxqTRs
 HjTO53/nRtrcTUsEO36bnrtH/AJvuDEpOuC/qzH2ufvCpWCBN6SnWQTuFcNd4C4rBcRI
 /Duw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A5JI6B6ZYL08KJAcYxH0iV2o06ru5QmKL1b5sihhAj8=;
 b=ErNdVl7IeXXV2tOgw0YI2yadf8SMXXtFSKWMqg3akVBH3pDuaahRJtXOaq6VtS7aVR
 rAWF6q24ho4U6VOLVVLiH9b1/IM6z9sC0Jc/m44vrnXR6BeicjkLNuDQUR11vr4CocjC
 rI3nqBkT/rNsHc7QYSBdbRZuMQ5mb5XkAQj6R4TxQsqpCwTZdFP/ipWCHQfjt60H3hVZ
 AebyCYE/osZjUay32kkkPqyEmV9CjMl6iAdFjpX0rRcQyPDJK6EXE40qVkCJuXFENPTA
 tSvkNOacLac3Rzj2n8qPbzGObNjeOZDKvXut5WaxaZ/ARGZEfpJnME4svWzVnRg2fAgr
 lWMg==
X-Gm-Message-State: APjAAAX6loNM9bEVRqdm/99g7Bm4pAlxYUKJlupstn346SbqkEFlevvB
 73yp3/Uk6wWQLgAv31yyjB4658wp4PMzKNcsfhfMhRAD
X-Google-Smtp-Source: APXvYqzMGtMhOFDd2HRzahm9/e8KhLdM0EnVBr5gMGDG5BBN9ke/yuVN82JWLfZGoNEWw6D3EplerQC/OU0iZ7HVbOc=
X-Received: by 2002:a9d:70d0:: with SMTP id w16mr1329089otj.107.1570892553315; 
 Sat, 12 Oct 2019 08:02:33 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h3_fwR=baRxHo+Aicms8C3CFnWzR51qSS99xo2u--OY2vg@mail.gmail.com>
 <CAGNhwTNRQwC2-gVFQFFyfk0ubGCfoL2a1kShguyMny1Y_9Xw_g@mail.gmail.com>
 <CANQ3h39_-YDpCHEgCcR=r3z=iK7QOmJPFYnY8DATs5++zh+uug@mail.gmail.com>
 <CAGNhwTPELUny7ZaVY18KzPvmD3enezmhMLvypUxUZ5qD3zw+cg@mail.gmail.com>
 <CANQ3h39YJO_iNBdg8_Psx8fHoZGo-aJsESJTBRVf0G1-enZAkw@mail.gmail.com>
In-Reply-To: <CANQ3h39YJO_iNBdg8_Psx8fHoZGo-aJsESJTBRVf0G1-enZAkw@mail.gmail.com>
Date: Sat, 12 Oct 2019 11:02:22 -0400
Message-ID: <CAGNhwTP9xwKbDUN49knKmdPzu-yo3rwfzbnvx3YqLuwV3+jyVg@mail.gmail.com>
To: Saeid Hashemi <saeidh@gmail.com>
Subject: Re: [USRP-users] uhd_fft failure
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5698154279070275341=="
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

--===============5698154279070275341==
Content-Type: multipart/alternative; boundary="0000000000009efb3d0594b7eca6"

--0000000000009efb3d0594b7eca6
Content-Type: text/plain; charset="UTF-8"

OK. Thanks for the info Saeid. I'll look into creating a VM using Ubuntu
16.04.1 to see what happens. - MLD

On Fri, Oct 11, 2019 at 4:47 PM Saeid Hashemi <saeidh@gmail.com> wrote:

> It's Ubuntu 16.04.1, but yes, I will follow the source build instructions.
>
> On Fri, Oct 11, 2019 at 3:11 PM Michael Dickens <michael.dickens@ettus.com>
> wrote:
>
>> Hi Saeid - Thanks for the followup. I totally agree that if you just
>> "sudo apt install gnuradio", compatible versions should be installed. Are
>> you using Ubuntu 16.04.6 LTS (Xenial Xerus)? If you choose to install from
>> source, you can follow instructions such as the GR recommended way here <
>> https://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29
>> >. I have an Ubuntu 18.04 install that went very smoothly using this guide,
>> but maybe the guide is outdated for older Ubuntu; or, our packages need to
>> be updated for that OS version ... Cheers! - MLD
>>
>> On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>>
>>> I will follow your advice, but it's worth mentioning I simply did
>>> apt-get gnuradio and should therefore have a compatible version of uhd
>>> installed automatically as a dependency. I did not install uhd separately.
>>>
>> --
>> Michael Dickens
>> Ettus Research Technical Support
>> Email: support@ettus.com
>> Web: https://ettus.com/
>>
>

-- 
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--0000000000009efb3d0594b7eca6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK. Thanks for the info Saeid. I&#39;ll look into creating=
 a VM using Ubuntu 16.04.1 to see what happens. - MLD</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2019=
 at 4:47 PM Saeid Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com">saeidh@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">It&#39;s Ubuntu 16.04.1, but yes, I will follow the=
 source build instructions.</div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2019 at 3:11 PM Michael Dickens =
&lt;<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">michael.=
dickens@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Saeid - Thanks f=
or the followup. I totally agree that if you just &quot;sudo apt install gn=
uradio&quot;, compatible versions should be installed. Are you using Ubuntu=
 16.04.6 LTS (Xenial Xerus)? If you choose to install from source, you can =
follow instructions such as the GR recommended way here &lt;=C2=A0<a href=
=3D"https://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04=
.29" target=3D"_blank">https://wiki.gnuradio.org/index.php/UbuntuInstall#Xe=
nial_Xerus_.2816.04.29</a> &gt;. I have an Ubuntu=C2=A018.04 install that w=
ent very=C2=A0smoothly using this guide, but maybe the guide is outdated fo=
r older Ubuntu; or, our packages need to be updated for that OS version ...=
 Cheers! - MLD</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi &lt;<a href=
=3D"mailto:saeidh@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">I will follow your advice, but it&#39;s worth mentioning I simply did =
apt-get gnuradio and should therefore have a compatible version of uhd inst=
alled automatically as a dependency. I did not install uhd separately.</div=
></blockquote></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=
=3D"ltr">Michael Dickens<br>Ettus Research Technical Support<br>Email: <a h=
ref=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.com</a><br=
>Web: <a href=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</=
a></div></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael D=
ickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:supp=
ort@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"h=
ttps://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></di=
v></div>

--0000000000009efb3d0594b7eca6--


--===============5698154279070275341==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5698154279070275341==--

