Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3056CD99A6
	for <lists+usrp-users@lfdr.de>; Wed, 16 Oct 2019 21:03:00 +0200 (CEST)
Received: from [::1] (port=48562 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKoZU-000335-Kr; Wed, 16 Oct 2019 15:02:56 -0400
Received: from mail-lf1-f49.google.com ([209.85.167.49]:40307)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1iKoZQ-0002v8-Il
 for usrp-users@lists.ettus.com; Wed, 16 Oct 2019 15:02:52 -0400
Received: by mail-lf1-f49.google.com with SMTP id f23so2873816lfk.7
 for <usrp-users@lists.ettus.com>; Wed, 16 Oct 2019 12:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r3MBQwUi7+uqh1BleCp7KRU4HyqunMikCL3HTvZvG1E=;
 b=EaMvElBw6Ib+yvs769cgKGf0HVaBucbFPzXfIroNFLFj1gVcyvUkbLu4/en+jciGOG
 v7zWqhG3NIFyLXyLTcmrq+8XJqljwuMcmf5dwuF2Om74PMo+RnMNjlmHii0yzjPw/oHw
 Ig8PZrXQJeuN0rAzGYOUAL5Y8TjksDZ2EoRf0PBUzJ8CTKpppZCJqtY6/2UEyz+iJK72
 bYMRove2v7Hbn5E/4XTieBLjQvGyDf7LdT9C6/JElPyW6k9aD8OZWVKY0EWe570rzLPL
 g81ng25kwWdzIq3WczjJHdWuiu/V56LdEEPnwcWJP5W5Yo0E7MbJj0lTMsjmr1jOse87
 SIGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r3MBQwUi7+uqh1BleCp7KRU4HyqunMikCL3HTvZvG1E=;
 b=C4kfziXQ56XZZqBkYSSi1Xg9Pc8EvqERC/4G8cjVCyZgDLkhBaxJSBS4jg53UBAV/y
 4MHNi3kbKSd62c8W0z63xH1rn8kbxpJZpWFizaVBiQruGu7Llurb7bTIVZuIOlJWmUpN
 PUnnpG5FLLTuVRtJjp/RkZ4XvwAH6Q+O75nYJgogy9NM4JxUFp7SOCluB16/buKhb2ED
 iA2plrWT8JSelqay4SVVd3ytmTYiVltl3agdV35OuvWRpkWM7EAJwutOSneeOmbdp/Nm
 5JNE1AcIEaMKm/P57PXibFXSMOmPHPMDIb2p472h73W2VqQBHNdLUkdtDebOBBUPmN2B
 ESqA==
X-Gm-Message-State: APjAAAWBnDtFyBN+tJXDswDmmIrl+1IX/PuujD0PSGjMPfTQoWHEiuUG
 Svm5jhzNv7HoLID1Z1wvJ7Demait9Yvos+W41Ko=
X-Google-Smtp-Source: APXvYqz/71SAG0oOPMPBQMOznQmG0S3UaSWBgLxiEqFXtxl+bhV4tWxA5VGsXDvECRB4Iwy8NbdXm91Uk+KKcuCW6SM=
X-Received: by 2002:a19:4f4c:: with SMTP id a12mr2632035lfk.18.1571252531123; 
 Wed, 16 Oct 2019 12:02:11 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h3_fwR=baRxHo+Aicms8C3CFnWzR51qSS99xo2u--OY2vg@mail.gmail.com>
 <CAGNhwTNRQwC2-gVFQFFyfk0ubGCfoL2a1kShguyMny1Y_9Xw_g@mail.gmail.com>
 <CANQ3h39_-YDpCHEgCcR=r3z=iK7QOmJPFYnY8DATs5++zh+uug@mail.gmail.com>
 <CAGNhwTPELUny7ZaVY18KzPvmD3enezmhMLvypUxUZ5qD3zw+cg@mail.gmail.com>
 <CANQ3h39YJO_iNBdg8_Psx8fHoZGo-aJsESJTBRVf0G1-enZAkw@mail.gmail.com>
 <CAGNhwTP9xwKbDUN49knKmdPzu-yo3rwfzbnvx3YqLuwV3+jyVg@mail.gmail.com>
In-Reply-To: <CAGNhwTP9xwKbDUN49knKmdPzu-yo3rwfzbnvx3YqLuwV3+jyVg@mail.gmail.com>
Date: Wed, 16 Oct 2019 15:01:57 -0400
Message-ID: <CANQ3h3-6yNAt2v35kUR1z9sNhu7_6M1h3ZsANpDMpueksf2b1w@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
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
From: Saeid Hashemi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saeid Hashemi <saeidh@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9191942665374866741=="
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

--===============9191942665374866741==
Content-Type: multipart/alternative; boundary="000000000000f8585f05950bbce1"

--000000000000f8585f05950bbce1
Content-Type: text/plain; charset="UTF-8"

Hi Michael,

The gnuradio git repository does not have a tag for v3.17.14.5, and using
v3.7.13.5 gives me:

-- Python checking for six - python 2 and 3 compatibility library
-- Python checking for six - python 2 and 3 compatibility library - not
found
CMake Error at volk/CMakeLists.txt:98 (message):
  six - python 2 and 3 compatibility library required to build VOLK


-- Configuring incomplete, errors occurred!
See also "/home/nuc03/gnuradio/build/CMakeFiles/CMakeOutput.log".
See also "/home/nuc03/gnuradio/build/CMakeFiles/CMakeError.log".


Checking out tag v3.8.0.0 results in Cmake dependency of 3.8 and up, so I
need to install that manually.


On Sat, Oct 12, 2019 at 11:02 AM Michael Dickens <michael.dickens@ettus.com>
wrote:

> OK. Thanks for the info Saeid. I'll look into creating a VM using Ubuntu
> 16.04.1 to see what happens. - MLD
>
> On Fri, Oct 11, 2019 at 4:47 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>
>> It's Ubuntu 16.04.1, but yes, I will follow the source build instructions.
>>
>> On Fri, Oct 11, 2019 at 3:11 PM Michael Dickens <
>> michael.dickens@ettus.com> wrote:
>>
>>> Hi Saeid - Thanks for the followup. I totally agree that if you just
>>> "sudo apt install gnuradio", compatible versions should be installed. Are
>>> you using Ubuntu 16.04.6 LTS (Xenial Xerus)? If you choose to install from
>>> source, you can follow instructions such as the GR recommended way here <
>>> https://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29
>>> >. I have an Ubuntu 18.04 install that went very smoothly using this guide,
>>> but maybe the guide is outdated for older Ubuntu; or, our packages need to
>>> be updated for that OS version ... Cheers! - MLD
>>>
>>> On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>>>
>>>> I will follow your advice, but it's worth mentioning I simply did
>>>> apt-get gnuradio and should therefore have a compatible version of uhd
>>>> installed automatically as a dependency. I did not install uhd separately.
>>>>
>>> --
>>> Michael Dickens
>>> Ettus Research Technical Support
>>> Email: support@ettus.com
>>> Web: https://ettus.com/
>>>
>>
>
> --
> Michael Dickens
> Ettus Research Technical Support
> Email: support@ettus.com
> Web: https://ettus.com/
>

--000000000000f8585f05950bbce1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Michael,<div><br></div><div>The gnuradio git repository=
 does not have a tag for v3.17.14.5, and using v3.7.13.5 gives me:</div><di=
v><br></div><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"=
><div><font size=3D"1" face=3D"monospace">-- Python checking for six - pyth=
on 2 and 3 compatibility library</font></div><div><font size=3D"1" face=3D"=
monospace">-- Python checking for six - python 2 and 3 compatibility librar=
y - not found</font></div><div><font size=3D"1" face=3D"monospace">CMake Er=
ror at volk/CMakeLists.txt:98 (message):</font></div><div><font size=3D"1" =
face=3D"monospace">=C2=A0 six - python 2 and 3 compatibility library requir=
ed to build VOLK</font></div><div><font size=3D"1" face=3D"monospace"><br><=
/font></div><div><font size=3D"1" face=3D"monospace"><br></font></div><div>=
<font size=3D"1" face=3D"monospace">-- Configuring incomplete, errors occur=
red!</font></div><div><font size=3D"1" face=3D"monospace">See also &quot;/h=
ome/nuc03/gnuradio/build/CMakeFiles/CMakeOutput.log&quot;.</font></div><div=
><font size=3D"1" face=3D"monospace">See also &quot;/home/nuc03/gnuradio/bu=
ild/CMakeFiles/CMakeError.log&quot;.</font></div></blockquote><div><br></di=
v><div>Checking out tag v3.8.0.0 results in Cmake dependency of 3.8 and up,=
 so I need to install that manually.</div><div><br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 12, 20=
19 at 11:02 AM Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.=
com">michael.dickens@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr">OK. Thanks for the info Saei=
d. I&#39;ll look into creating a VM using Ubuntu 16.04.1 to see what happen=
s. - MLD</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Fri, Oct 11, 2019 at 4:47 PM Saeid Hashemi &lt;<a href=3D"mailto=
:saeidh@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">It&#3=
9;s Ubuntu 16.04.1, but yes, I will follow the source build instructions.</=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Fri, Oct 11, 2019 at 3:11 PM Michael Dickens &lt;<a href=3D"mailto:michael=
.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div dir=3D"ltr">Hi=C2=A0Saeid - Thanks for the followup. I totally ag=
ree that if you just &quot;sudo apt install gnuradio&quot;, compatible vers=
ions should be installed. Are you using Ubuntu 16.04.6 LTS (Xenial Xerus)? =
If you choose to install from source, you can follow instructions such as t=
he GR recommended way here &lt;=C2=A0<a href=3D"https://wiki.gnuradio.org/i=
ndex.php/UbuntuInstall#Xenial_Xerus_.2816.04.29" target=3D"_blank">https://=
wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29</a> &gt;=
. I have an Ubuntu=C2=A018.04 install that went very=C2=A0smoothly using th=
is guide, but maybe the guide is outdated for older Ubuntu; or, our package=
s need to be updated for that OS version ... Cheers! - MLD</div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2=
019 at 2:24 PM Saeid Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com" target=
=3D"_blank">saeidh@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">I will follow your advice, but=
 it&#39;s worth mentioning I simply did apt-get gnuradio and should therefo=
re have a compatible version of uhd installed automatically as a dependency=
. I did not install uhd separately.</div></blockquote></div>-- <br><div dir=
=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ettus Re=
search Technical Support<br>Email: <a href=3D"mailto:support@ettus.com" tar=
get=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/"=
 target=3D"_blank">https://ettus.com/</a></div></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ettus Research T=
echnical Support<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_=
blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=
=3D"_blank">https://ettus.com/</a></div></div></div></div>
</blockquote></div>

--000000000000f8585f05950bbce1--


--===============9191942665374866741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9191942665374866741==--

