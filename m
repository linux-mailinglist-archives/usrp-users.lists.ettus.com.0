Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 93343DCF38
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2019 21:19:40 +0200 (CEST)
Received: from [::1] (port=57360 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iLXmj-0003fj-Mq; Fri, 18 Oct 2019 15:19:37 -0400
Received: from mail-lf1-f49.google.com ([209.85.167.49]:39915)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1iLXmf-0003Wm-SL
 for usrp-users@lists.ettus.com; Fri, 18 Oct 2019 15:19:34 -0400
Received: by mail-lf1-f49.google.com with SMTP id 195so5508872lfj.6
 for <usrp-users@lists.ettus.com>; Fri, 18 Oct 2019 12:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2kUb3C4wNOV48b52P3PHR1j5ivD7BbkrBPcHQJZbqAU=;
 b=Z132PLm79uqDH5xHG/i0RuJUUDQbCM0CwhCtrIZeNtFwHYt03iG9p4fkfpxd8Z3729
 rwHECK06Gvq8p8PnkQrJ6kzHK/O6vQIvHYxSPewMrmviB57m+KNKlE+KEC4HHKi+lctl
 umMs+Gv4LUwuKx1gzXSJ/RP0AKwGkMoLGn4GgNVLjYE8FfIn59xsHRUCZg01t8saKVAw
 aLX1/uO6Ikk8mHlqBDN34cpLVAlnCh5yydTmaixkFlxW2iPJQK/RTjWX36kBibIGcJGT
 7dGZqrlU1ub7yM05UxZFNTv56h5t3ObQhrF6kysYRJJjXzySyKbmmOeAq9zvPtR48SlR
 ePtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2kUb3C4wNOV48b52P3PHR1j5ivD7BbkrBPcHQJZbqAU=;
 b=nN490TeeTS5aBh0FDZkfgJ9nfMwis1fq/lCpo64jyrxYSBkxc7Bj5HOSpOEYLFvFc/
 +OGHduPkaJ1ijSxuJfFRh1l24NEgbDfGlVAuR5QjvPMAfMFcrVHNNa2CU2vlXxjPstfC
 CsG3hw3Ei6iqKXJHsooHby/Yp6oy/aHj2caX6INQjNWYo/mDbS9xgg0Tzs50Kcght6rw
 IT46ueuETb5xFh0GT2vzePLLxWJgGgqtgGcZz11GJRDeOb7ukn4vFoUC9c1LxZnNrvty
 OuBa7QTI4DqInfVL90fde+kzQ9lyZp7rxDoojVdRZuURj4j1WCSNpnHQGaM1skGPezBK
 TCAQ==
X-Gm-Message-State: APjAAAUb7yn7tiPdok67+Z9mr+uMZ2fg6vcR7QkVUK2KDtztC1O3zgUm
 tyKGlvDlwhAPjZGkLuAPjVP1A8PHAnGSxephhRA=
X-Google-Smtp-Source: APXvYqw1w7blI1HYxd0VX6e9jbHybPy7kGhTKzM5tbtxPjpv0NAX1PS47/J5XeEqhUQb9xyt1sddPkYgvr5gf1U7snQ=
X-Received: by 2002:a05:6512:25c:: with SMTP id
 b28mr6998822lfo.35.1571426332471; 
 Fri, 18 Oct 2019 12:18:52 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h3_fwR=baRxHo+Aicms8C3CFnWzR51qSS99xo2u--OY2vg@mail.gmail.com>
 <CAGNhwTNRQwC2-gVFQFFyfk0ubGCfoL2a1kShguyMny1Y_9Xw_g@mail.gmail.com>
 <CANQ3h39_-YDpCHEgCcR=r3z=iK7QOmJPFYnY8DATs5++zh+uug@mail.gmail.com>
 <CAGNhwTPELUny7ZaVY18KzPvmD3enezmhMLvypUxUZ5qD3zw+cg@mail.gmail.com>
 <CANQ3h39YJO_iNBdg8_Psx8fHoZGo-aJsESJTBRVf0G1-enZAkw@mail.gmail.com>
 <CAGNhwTP9xwKbDUN49knKmdPzu-yo3rwfzbnvx3YqLuwV3+jyVg@mail.gmail.com>
 <CANQ3h3-6yNAt2v35kUR1z9sNhu7_6M1h3ZsANpDMpueksf2b1w@mail.gmail.com>
 <CAGNhwTP7QX-fTNWNwCKsp0t8d072ovECMA9Z3JMEYyhozkinnA@mail.gmail.com>
In-Reply-To: <CAGNhwTP7QX-fTNWNwCKsp0t8d072ovECMA9Z3JMEYyhozkinnA@mail.gmail.com>
Date: Fri, 18 Oct 2019 15:18:38 -0400
Message-ID: <CANQ3h3_guExuKAV6gqNjEuaVLiOMYL_WaqQoPL655HYRs3_0TA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============8456853554008946922=="
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

--===============8456853554008946922==
Content-Type: multipart/alternative; boundary="000000000000567b680595343482"

--000000000000567b680595343482
Content-Type: text/plain; charset="UTF-8"

Okay, so installing python-six fixed that, and I was able to install
3.7.13.5 from source.
The sample apps like uhd_fft are not in the path like they used to be with
binary installation. And trying it from the apps folder gives me:

nuc03@nuc03:/usr/local/bin$ /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft
Traceback (most recent call last):
  File "/home/nuc03/gnuradio/gr-uhd/apps/uhd_fft", line 39, in <module>
    import sip
ImportError: No module named sip


On Thu, Oct 17, 2019 at 10:26 AM Michael Dickens <michael.dickens@ettus.com>
wrote:

> Yes sorry about the GR37 release version: 3.7.13.5 is the correct on.
> Installing Py27-six should be pretty straight forward & should allow you to
> proceed with that install. GR38 has it's own set of dependencies, some of
> which overlap with GR37 and some of which don't. You'll want to follow the
> install guide for your OS to get those dependencies. Good luck! - MLD
>
> On Wed, Oct 16, 2019 at 3:02 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>
>> Hi Michael,
>>
>> The gnuradio git repository does not have a tag for v3.17.14.5, and using
>> v3.7.13.5 gives me:
>>
>> -- Python checking for six - python 2 and 3 compatibility library
>> -- Python checking for six - python 2 and 3 compatibility library - not
>> found
>> CMake Error at volk/CMakeLists.txt:98 (message):
>>   six - python 2 and 3 compatibility library required to build VOLK
>>
>>
>> -- Configuring incomplete, errors occurred!
>> See also "/home/nuc03/gnuradio/build/CMakeFiles/CMakeOutput.log".
>> See also "/home/nuc03/gnuradio/build/CMakeFiles/CMakeError.log".
>>
>>
>> Checking out tag v3.8.0.0 results in Cmake dependency of 3.8 and up, so I
>> need to install that manually.
>>
>>
>> On Sat, Oct 12, 2019 at 11:02 AM Michael Dickens <
>> michael.dickens@ettus.com> wrote:
>>
>>> OK. Thanks for the info Saeid. I'll look into creating a VM using Ubuntu
>>> 16.04.1 to see what happens. - MLD
>>>
>>> On Fri, Oct 11, 2019 at 4:47 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>>>
>>>> It's Ubuntu 16.04.1, but yes, I will follow the source build
>>>> instructions.
>>>>
>>>> On Fri, Oct 11, 2019 at 3:11 PM Michael Dickens <
>>>> michael.dickens@ettus.com> wrote:
>>>>
>>>>> Hi Saeid - Thanks for the followup. I totally agree that if you just
>>>>> "sudo apt install gnuradio", compatible versions should be installed. Are
>>>>> you using Ubuntu 16.04.6 LTS (Xenial Xerus)? If you choose to install from
>>>>> source, you can follow instructions such as the GR recommended way here <
>>>>> https://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29
>>>>> >. I have an Ubuntu 18.04 install that went very smoothly using this guide,
>>>>> but maybe the guide is outdated for older Ubuntu; or, our packages need to
>>>>> be updated for that OS version ... Cheers! - MLD
>>>>>
>>>>> On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi <saeidh@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> I will follow your advice, but it's worth mentioning I simply did
>>>>>> apt-get gnuradio and should therefore have a compatible version of uhd
>>>>>> installed automatically as a dependency. I did not install uhd separately.
>>>>>>
>>>>> --
>>>>> Michael Dickens
>>>>> Ettus Research Technical Support
>>>>> Email: support@ettus.com
>>>>> Web: https://ettus.com/
>>>>>
>>>>
>>>
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

--000000000000567b680595343482
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Okay, so installing python-six fixed that, and I was able =
to install 3.7.13.5 from source.<div>The sample apps like uhd_fft are not i=
n the path like they used to be with binary installation. And trying it fro=
m the apps folder gives me:</div><div><br></div><blockquote style=3D"margin=
:0 0 0 40px;border:none;padding:0px"><div><font face=3D"monospace">nuc03@nu=
c03:/usr/local/bin$ /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft</font></div><d=
iv><font face=3D"monospace">Traceback (most recent call last):</font></div>=
<div><font face=3D"monospace">=C2=A0 File &quot;/home/nuc03/gnuradio/gr-uhd=
/apps/uhd_fft&quot;, line 39, in &lt;module&gt;</font></div><div><font face=
=3D"monospace">=C2=A0 =C2=A0 import sip</font></div><div><font face=3D"mono=
space">ImportError: No module named sip</font></div></blockquote></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oc=
t 17, 2019 at 10:26 AM Michael Dickens &lt;<a href=3D"mailto:michael.dicken=
s@ettus.com">michael.dickens@ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Yes sorry about=
 the GR37 release version: 3.7.13.5 is the correct on. Installing Py27-six =
should be pretty straight forward &amp; should allow you to proceed with th=
at install. GR38 has it&#39;s own set of dependencies, some of which overla=
p with GR37 and some of which don&#39;t. You&#39;ll want to follow the inst=
all guide for your OS to get those dependencies. Good=C2=A0luck! - MLD</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, Oct 16, 2019 at 3:02 PM Saeid Hashemi &lt;<a href=3D"mailto:saeidh=
@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Michael,<=
div><br></div><div>The gnuradio git repository does not have a tag for v3.1=
7.14.5, and using v3.7.13.5 gives me:</div><div><br></div><blockquote style=
=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><font size=3D"1" =
face=3D"monospace">-- Python checking for six - python 2 and 3 compatibilit=
y library</font></div><div><font size=3D"1" face=3D"monospace">-- Python ch=
ecking for six - python 2 and 3 compatibility library - not found</font></d=
iv><div><font size=3D"1" face=3D"monospace">CMake Error at volk/CMakeLists.=
txt:98 (message):</font></div><div><font size=3D"1" face=3D"monospace">=C2=
=A0 six - python 2 and 3 compatibility library required to build VOLK</font=
></div><div><font size=3D"1" face=3D"monospace"><br></font></div><div><font=
 size=3D"1" face=3D"monospace"><br></font></div><div><font size=3D"1" face=
=3D"monospace">-- Configuring incomplete, errors occurred!</font></div><div=
><font size=3D"1" face=3D"monospace">See also &quot;/home/nuc03/gnuradio/bu=
ild/CMakeFiles/CMakeOutput.log&quot;.</font></div><div><font size=3D"1" fac=
e=3D"monospace">See also &quot;/home/nuc03/gnuradio/build/CMakeFiles/CMakeE=
rror.log&quot;.</font></div></blockquote><div><br></div><div>Checking out t=
ag v3.8.0.0 results in Cmake dependency of 3.8 and up, so I need to install=
 that manually.</div><div><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 12, 2019 at 11:02 AM Michae=
l Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank=
">michael.dickens@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">OK. Thanks for the info Saeid. =
I&#39;ll look into creating a VM using Ubuntu 16.04.1 to see what happens. =
- MLD</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Fri, Oct 11, 2019 at 4:47 PM Saeid Hashemi &lt;<a href=3D"mailto:sa=
eidh@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">It&#39;s=
 Ubuntu 16.04.1, but yes, I will follow the source build instructions.</div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, Oct 11, 2019 at 3:11 PM Michael Dickens &lt;<a href=3D"mailto:michael.di=
ckens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div dir=3D"ltr">Hi=C2=A0Saeid - Thanks for the followup. I totally agree=
 that if you just &quot;sudo apt install gnuradio&quot;, compatible version=
s should be installed. Are you using Ubuntu 16.04.6 LTS (Xenial Xerus)? If =
you choose to install from source, you can follow instructions such as the =
GR recommended way here &lt;=C2=A0<a href=3D"https://wiki.gnuradio.org/inde=
x.php/UbuntuInstall#Xenial_Xerus_.2816.04.29" target=3D"_blank">https://wik=
i.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29</a> &gt;. I=
 have an Ubuntu=C2=A018.04 install that went very=C2=A0smoothly using this =
guide, but maybe the guide is outdated for older Ubuntu; or, our packages n=
eed to be updated for that OS version ... Cheers! - MLD</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2019=
 at 2:24 PM Saeid Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com" target=3D=
"_blank">saeidh@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">I will follow your advice, but it=
&#39;s worth mentioning I simply did apt-get gnuradio and should therefore =
have a compatible version of uhd installed automatically as a dependency. I=
 did not install uhd separately.</div></blockquote></div>-- <br><div dir=3D=
"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ettus Resea=
rch Technical Support<br>Email: <a href=3D"mailto:support@ettus.com" target=
=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" ta=
rget=3D"_blank">https://ettus.com/</a></div></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ettus Research T=
echnical Support<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_=
blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=
=3D"_blank">https://ettus.com/</a></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ettus Research T=
echnical Support<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_=
blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=
=3D"_blank">https://ettus.com/</a></div></div></div></div>
</blockquote></div>

--000000000000567b680595343482--


--===============8456853554008946922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8456853554008946922==--

