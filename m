Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A37DB00B
	for <lists+usrp-users@lfdr.de>; Thu, 17 Oct 2019 16:27:41 +0200 (CEST)
Received: from [::1] (port=33400 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iL6kZ-0001Ao-N8; Thu, 17 Oct 2019 10:27:35 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:46769)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1iL6kV-00015J-Tl
 for usrp-users@lists.ettus.com; Thu, 17 Oct 2019 10:27:31 -0400
Received: by mail-oi1-f182.google.com with SMTP id k25so2273854oiw.13
 for <usrp-users@lists.ettus.com>; Thu, 17 Oct 2019 07:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CulI0CwfI7St1PuLNOD8TaXbwKkKFOOg67mmLbWdUR0=;
 b=ZHTIS/9JGt+U/21smnwbS2pYzYvONr0cMjFtveBs17vpMm6mCcReQ5wBltthNUr9aj
 3/YUpxyK4zlNgVGXBGdxwN/pMdrq5gAk+LU3cKYWnIYj6KgsvttW9qUNdlGLmYir7Qx0
 JjbCjCUXn5pYEV5RrVUDSzNRTTaylk0GH3mtQ2Whb2O16Ehb2A9r8FPpsQlQZeEGL9SA
 TiNRmazNrwizgNr+ZcA7febMM9XryAB+WHUlbD8Pi8PUzgN8N/wL6QwDwcqIEdxMW42d
 8FMQR1Eyo/VH4zxn/vl9XXhxdJg1tgbKHbtirdwAHWhBgfZtCPSj9WTZ2CG4fOTYmlb4
 iORA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CulI0CwfI7St1PuLNOD8TaXbwKkKFOOg67mmLbWdUR0=;
 b=T4eEDf8uxtX5LPRNR09t+LoT+q3+GH3+uJCuYrjSjQ3vZExEXR/fXp+zBPVJOMmnhF
 Yirzpr9ZwMsx+nOBj0KGE/2t2dg/GUfjgfWygTjVVHhvjdNi4OmfUVBaDExon1rv5iHf
 AAQjZYPjqsiERrVllTY8tAO+ONWA1X1YHjxwNZOMECkSdMGT7sTy/RTFikUwi27Ge5Ee
 6RbAIfmLG1LoepSCdUE2DOQ1r6ks5MuZASYLTWoPiZvl4f8S/L2lWHjkkSKVKFskaOxi
 CZeg1D7PkAyjvRc1I8/MZh1KuIfBcWzdVo/9/4CIUBNN8gxxnCKfn+VAzWFI5sU1Y0HO
 m9gw==
X-Gm-Message-State: APjAAAXTZTHIsd4usyJ+Jd/MLUc+8hgJXvoCOm7UPKTreBC7LwbSSstZ
 Hb14kFlTGSCkz+4GQVy/yEhuCmKK+1Nntoq+UjR1o3ud
X-Google-Smtp-Source: APXvYqxZjNMLFU9LBpjpxPu0AVW+2T+5aEtGzd4DKFMnXCpDLzYOY+TCfR31PlhuLBmjkBTzGIfAnrxk+YoCuLu2i3Q=
X-Received: by 2002:aca:d44e:: with SMTP id l75mr3515499oig.44.1571322410929; 
 Thu, 17 Oct 2019 07:26:50 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h3_fwR=baRxHo+Aicms8C3CFnWzR51qSS99xo2u--OY2vg@mail.gmail.com>
 <CAGNhwTNRQwC2-gVFQFFyfk0ubGCfoL2a1kShguyMny1Y_9Xw_g@mail.gmail.com>
 <CANQ3h39_-YDpCHEgCcR=r3z=iK7QOmJPFYnY8DATs5++zh+uug@mail.gmail.com>
 <CAGNhwTPELUny7ZaVY18KzPvmD3enezmhMLvypUxUZ5qD3zw+cg@mail.gmail.com>
 <CANQ3h39YJO_iNBdg8_Psx8fHoZGo-aJsESJTBRVf0G1-enZAkw@mail.gmail.com>
 <CAGNhwTP9xwKbDUN49knKmdPzu-yo3rwfzbnvx3YqLuwV3+jyVg@mail.gmail.com>
 <CANQ3h3-6yNAt2v35kUR1z9sNhu7_6M1h3ZsANpDMpueksf2b1w@mail.gmail.com>
In-Reply-To: <CANQ3h3-6yNAt2v35kUR1z9sNhu7_6M1h3ZsANpDMpueksf2b1w@mail.gmail.com>
Date: Thu, 17 Oct 2019 10:26:39 -0400
Message-ID: <CAGNhwTP7QX-fTNWNwCKsp0t8d072ovECMA9Z3JMEYyhozkinnA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7165368726305840454=="
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

--===============7165368726305840454==
Content-Type: multipart/alternative; boundary="00000000000021a26205951c0290"

--00000000000021a26205951c0290
Content-Type: text/plain; charset="UTF-8"

Yes sorry about the GR37 release version: 3.7.13.5 is the correct on.
Installing Py27-six should be pretty straight forward & should allow you to
proceed with that install. GR38 has it's own set of dependencies, some of
which overlap with GR37 and some of which don't. You'll want to follow the
install guide for your OS to get those dependencies. Good luck! - MLD

On Wed, Oct 16, 2019 at 3:02 PM Saeid Hashemi <saeidh@gmail.com> wrote:

> Hi Michael,
>
> The gnuradio git repository does not have a tag for v3.17.14.5, and using
> v3.7.13.5 gives me:
>
> -- Python checking for six - python 2 and 3 compatibility library
> -- Python checking for six - python 2 and 3 compatibility library - not
> found
> CMake Error at volk/CMakeLists.txt:98 (message):
>   six - python 2 and 3 compatibility library required to build VOLK
>
>
> -- Configuring incomplete, errors occurred!
> See also "/home/nuc03/gnuradio/build/CMakeFiles/CMakeOutput.log".
> See also "/home/nuc03/gnuradio/build/CMakeFiles/CMakeError.log".
>
>
> Checking out tag v3.8.0.0 results in Cmake dependency of 3.8 and up, so I
> need to install that manually.
>
>
> On Sat, Oct 12, 2019 at 11:02 AM Michael Dickens <
> michael.dickens@ettus.com> wrote:
>
>> OK. Thanks for the info Saeid. I'll look into creating a VM using Ubuntu
>> 16.04.1 to see what happens. - MLD
>>
>> On Fri, Oct 11, 2019 at 4:47 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>>
>>> It's Ubuntu 16.04.1, but yes, I will follow the source build
>>> instructions.
>>>
>>> On Fri, Oct 11, 2019 at 3:11 PM Michael Dickens <
>>> michael.dickens@ettus.com> wrote:
>>>
>>>> Hi Saeid - Thanks for the followup. I totally agree that if you just
>>>> "sudo apt install gnuradio", compatible versions should be installed. Are
>>>> you using Ubuntu 16.04.6 LTS (Xenial Xerus)? If you choose to install from
>>>> source, you can follow instructions such as the GR recommended way here <
>>>> https://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29
>>>> >. I have an Ubuntu 18.04 install that went very smoothly using this guide,
>>>> but maybe the guide is outdated for older Ubuntu; or, our packages need to
>>>> be updated for that OS version ... Cheers! - MLD
>>>>
>>>> On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>>>>
>>>>> I will follow your advice, but it's worth mentioning I simply did
>>>>> apt-get gnuradio and should therefore have a compatible version of uhd
>>>>> installed automatically as a dependency. I did not install uhd separately.
>>>>>
>>>> --
>>>> Michael Dickens
>>>> Ettus Research Technical Support
>>>> Email: support@ettus.com
>>>> Web: https://ettus.com/
>>>>
>>>
>>
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

--00000000000021a26205951c0290
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes sorry about the GR37 release version: 3.7.13.5 is=
 the correct on. Installing Py27-six should be pretty straight forward &amp=
; should allow you to proceed with that install. GR38 has it&#39;s own set =
of dependencies, some of which overlap with GR37 and some of which don&#39;=
t. You&#39;ll want to follow the install guide for your OS to get those dep=
endencies. Good=C2=A0luck! - MLD</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 16, 2019 at 3:02 PM Saeid=
 Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com">saeidh@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi Michael,<div><br></div><div>The gnuradio git repository does no=
t have a tag for v3.17.14.5, and using v3.7.13.5 gives me:</div><div><br></=
div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><=
div><font size=3D"1" face=3D"monospace">-- Python checking for six - python=
 2 and 3 compatibility library</font></div><div><font size=3D"1" face=3D"mo=
nospace">-- Python checking for six - python 2 and 3 compatibility library =
- not found</font></div><div><font size=3D"1" face=3D"monospace">CMake Erro=
r at volk/CMakeLists.txt:98 (message):</font></div><div><font size=3D"1" fa=
ce=3D"monospace">=C2=A0 six - python 2 and 3 compatibility library required=
 to build VOLK</font></div><div><font size=3D"1" face=3D"monospace"><br></f=
ont></div><div><font size=3D"1" face=3D"monospace"><br></font></div><div><f=
ont size=3D"1" face=3D"monospace">-- Configuring incomplete, errors occurre=
d!</font></div><div><font size=3D"1" face=3D"monospace">See also &quot;/hom=
e/nuc03/gnuradio/build/CMakeFiles/CMakeOutput.log&quot;.</font></div><div><=
font size=3D"1" face=3D"monospace">See also &quot;/home/nuc03/gnuradio/buil=
d/CMakeFiles/CMakeError.log&quot;.</font></div></blockquote><div><br></div>=
<div>Checking out tag v3.8.0.0 results in Cmake dependency of 3.8 and up, s=
o I need to install that manually.</div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 12, 2019=
 at 11:02 AM Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.co=
m" target=3D"_blank">michael.dickens@ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">OK. Thanks f=
or the info Saeid. I&#39;ll look into creating a VM using Ubuntu 16.04.1 to=
 see what happens. - MLD</div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, Oct 11, 2019 at 4:47 PM Saeid Hashemi &lt;<=
a href=3D"mailto:saeidh@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">It&#39;s Ubuntu 16.04.1, but yes, I will follow the source build=
 instructions.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Oct 11, 2019 at 3:11 PM Michael Dickens &lt;<a href=
=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">michael.dickens@ett=
us.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Saeid - Thanks for the foll=
owup. I totally agree that if you just &quot;sudo apt install gnuradio&quot=
;, compatible versions should be installed. Are you using Ubuntu 16.04.6 LT=
S (Xenial Xerus)? If you choose to install from source, you can follow inst=
ructions such as the GR recommended way here &lt;=C2=A0<a href=3D"https://w=
iki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29" target=
=3D"_blank">https://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_=
.2816.04.29</a> &gt;. I have an Ubuntu=C2=A018.04 install that went very=C2=
=A0smoothly using this guide, but maybe the guide is outdated for older Ubu=
ntu; or, our packages need to be updated for that OS version ... Cheers! - =
MLD</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi &lt;<a href=3D"mailto:saei=
dh@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I will fol=
low your advice, but it&#39;s worth mentioning I simply did apt-get gnuradi=
o and should therefore have a compatible version of uhd installed automatic=
ally as a dependency. I did not install uhd separately.</div></blockquote><=
/div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael=
 Dickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:su=
pport@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D=
"https://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></=
div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ettus Research T=
echnical Support<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_=
blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=
=3D"_blank">https://ettus.com/</a></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael D=
ickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:supp=
ort@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"h=
ttps://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></di=
v></div>

--00000000000021a26205951c0290--


--===============7165368726305840454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7165368726305840454==--

