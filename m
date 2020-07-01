Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29484210AB2
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jul 2020 14:02:36 +0200 (CEST)
Received: from [::1] (port=49330 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jqbRe-0006jf-TZ; Wed, 01 Jul 2020 08:02:30 -0400
Received: from mail-ua1-f51.google.com ([209.85.222.51]:37630)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mdyaaseen1995@gmail.com>)
 id 1jqbRb-0006em-LG
 for usrp-users@lists.ettus.com; Wed, 01 Jul 2020 08:02:27 -0400
Received: by mail-ua1-f51.google.com with SMTP id q15so7412934uap.4
 for <usrp-users@lists.ettus.com>; Wed, 01 Jul 2020 05:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aJc0GsO/RS3WSVbAweatXp9BwUFxT3b3TmYzIE5k4/8=;
 b=D2Lai7CoJxDSOoGtE5ZCUf5bjLpLbaSHSiBGdjZtlAfPH/7pr67NlQRDEoZvpo98qu
 o3tb833QUV/p8w6QxhvC9n3sK3O5TX1+73vkBJtRx1UppBCJZsZ8p37ZCPPFBthEGE98
 IQqHpNyrnU2C83YUqz/txjLeV1+pUZlxhyQRq3U5WOHcWN1JgcuIquuUIatbotSHsrTK
 h0+7h4cSGi39WWg+UYO1yTDTtEvny23rD98F8McPUXeZfs65Sp3o4KO8rWOojHB0KLlP
 tqw4PqGR02VahxRfEQAZfwKFGVPgwhqGj5a1PO1QdosKEI+F+5SgVJjBbm0zaN0ZCNVT
 Xkrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aJc0GsO/RS3WSVbAweatXp9BwUFxT3b3TmYzIE5k4/8=;
 b=S9e45F+Kz2e4fCLoKz43eLgqFcY1miCprpwsrZZEh4kr9ccpaO4FqEyb+v0aT0S7bv
 JL8QKCAIM8awXQWUW9PF0YSitz5wMM4ztgiIyN7XRaeNoN34xiSO5wSg9vHK4gGKW9Kz
 TTIxcCc/TF5i29cLynlAds9cOmxyhB50sOvLL5MTKdcYQuAWshvzY9HJWoXMC3rG+SYm
 +yDZePX1abbPERdhUrsGWyCmsC0N9LI8mSslP6MSL5OsBh9rV2/2/7S2y44+4QP3SGO0
 ItgnCnXg0n9ZgZarHiEcPKn16KV56ZpgPHIYp0C6LycALEzJ/0jDmnVxtiMU19uAOOVZ
 UrJw==
X-Gm-Message-State: AOAM533EdgOZF6a6rexzSJchnWG6IfAUj/NsjgGtD+Khu/4gnYf2hkQF
 INB9iFVytn6rbe3ZrgwbzdvQSSKybx3+CxGRLho=
X-Google-Smtp-Source: ABdhPJxkzG4CQmxzggcMCnBsqbej1qVRK5+7VKFc8Odb3jnENCX6lkyV3JRr1aJaWq4skBpNPizc9R2VrolKAl3pRyk=
X-Received: by 2002:ab0:130f:: with SMTP id g15mr17411838uae.112.1593604907048; 
 Wed, 01 Jul 2020 05:01:47 -0700 (PDT)
MIME-Version: 1.0
References: <CADRnH23bYgB4VKpKEy8r8r=AsPHgSAhfbTV1hFUV_P58RAqzeA@mail.gmail.com>
 <CAN-A3_usASEigFBD4+URCZByVvEW2nfNZg=mMqx3r705EozU=A@mail.gmail.com>
 <CADRnH22ozBw2sbW9trphiD9mBj0TqikA8nx-rU1R_aiPRM7HpA@mail.gmail.com>
In-Reply-To: <CADRnH22ozBw2sbW9trphiD9mBj0TqikA8nx-rU1R_aiPRM7HpA@mail.gmail.com>
Date: Wed, 1 Jul 2020 14:01:35 +0200
Message-ID: <CAN-A3_vbhXULpLUbmrG8-cCj-6kzXvPby_utuHGdHNi2woXNJA@mail.gmail.com>
To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 discuss-gnuradio@gnu.org
Subject: Re: [USRP-users] How to find and link OOT module with gnuradio 3.8?
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
From: Mohamed Yaaseen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mohamed Yaaseen <mdyaaseen1995@gmail.com>
Content-Type: multipart/mixed; boundary="===============2506189483575029878=="
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

--===============2506189483575029878==
Content-Type: multipart/alternative; boundary="00000000000065a55b05a9600ef4"

--00000000000065a55b05a9600ef4
Content-Type: text/plain; charset="UTF-8"

Hello EJ Kreinar,

I have somehow made gr-ettus and rfnoc mod tools to work with gnuradio 3.8.
I created, built and installed the gain rfnoc oot module. And it was
working as it should be.

I created a new branch called working-maint-3.8 for gr-ettus and pushed it
to my personal repository.

I have  just modified the cmake files and doxygen file (which was problem
during make process)

Here is the link:
https://github.com/yaaseen-dev/gr-ettus.git

This is my first time I am dealing with cmake stuff, so, I am also not sure
if this is the correct way to modify it. Because as you said, entire rfnoc
mod tools need to be updated to gr3.8
similar to gr_modtools
.
But, these fixes worked for me.

You can clone this, and check if it works for you also.

Hope this helps you also


Regards,
Yaaseen


On Wed, 1 Jul 2020 at 02:44, EJ Kreinar <ejkreinar@gmail.com> wrote:

> Ron,
>
> Yes, that looks right on target with my results... A little baffling to me
> though... linking against OOTs seems like a fairly standard use case but
> maybe it's less common than I thought. It's definitely needed for rfnoc
> though.
>
>
> Mohamed Yaaseen,
>
> The change that worked for me was to update GR_CMAKE_DIR in gr-ettus to
> ${CMAKE_MODULES_DIR)/gnuradio-ettus. Then I rebuilt and installed gr-ettus,
> and my OOT could then call find_package(gnuradio-ettus) and link against
> gnuradio-ettus.
>
> But I'm really not a cmake expert in any way, so I don't know if this is
> the "right" answer. Personally I'm satisfied with the GR_CMAKE_DIR change,
> but it does change the package name for downstream users...
>
> I guess the broader question is then... What is "desired" behavior provided
> by default from gr_modtool for finding and linking OOTs?
>
> EJ
>
> On Tue, Jun 30, 2020, 10:53 AM Mohamed Yaaseen <mdyaaseen1995@gmail.com>
> wrote:
>
>> Hello EJ Kreinar,
>>
>> I just came across this situation. I was trying to create a rfnoc gain
>> tutorial oot module using rfnomodtools. But, when I was doing cmake I got
>> some errors with respect to find_package(ettus).
>> I was just fiddling around with cmakefiles as I am not familiar with
>> cmake and stuff.
>>
>> But, I found a problem with the gr-ettus module itself. In the gr-ettus
>> module ettutsConfig.cmake file, there is a line
>> *include("${CMAKE_CURRENT_LIST_DIR}/ettusTarget.cmake"). *
>> This is the file that rfnoc OOT searches in order to find the
>> package ettus. But, while make && make install gr-ettus module installs *gnuradio-ettusTargets.cmake
>> *file at the location. Hence, rfnoc OOT module throws an error message
>> during cmake.
>>
>> When I corrected the line in gr-ettus and reinstalled it, my OOT module
>> was able to compile  successfully.
>>
>> But, I am now facing errors during the make process.
>>
>> I believe the rfnocmodtools template code present inside gr-ettus has not
>> been migrated for 3.8 even though gr-ettus is migrated.
>>
>> In the meantime I will also try to fix the error which is thrown during
>> make process. And update you in this thread if I have any success
>>
>> If you are able to get past the make process also and install it in gr
>> 3.8. It would be really great...!!!
>>
>> Regards,
>> Mohamed Yaaseen
>>
>> On Tue, 30 Jun 2020 at 16:01, EJ Kreinar via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi gnuradio and usrp-users,
>>>
>>> I'm trying to update rfnoc OOT modules for gnuradio 3.8 (gasp).
>>>
>>> But I'm having trouble finding and linking to gr-ettus specifically, and
>>> I wonder how we're supposed to call find_package(<OOT>) and then link to
>>> OOT modules in general with the updated cmake workflow... Trying to find
>>> and link gr-ettus, I've tried a few things...
>>>
>>> 1) find_package(ettus)
>>>
>>> I believe this worked against gnuradio-3.7. Now, I get the following
>>> error during cmake configure...
>>>
>>> ```
>>> --   No package 'ettus' found
>>> CMake Error at /usr/local/lib/cmake/ettus/ettusConfig.cmake:41 (include):
>>>   include could not find load file:
>>>     /usr/local/lib/cmake/ettus/ettusTarget.cmake
>>> ```
>>>
>>> 2) find_package(gnuradio-ettus)
>>>
>>> This seems more promising, since GR_LIBRARY_FOO seems to
>>> install gnuradio-ettus cmake files into the lib/cmake/ettus install
>>> location. This fails in cmake configure with the following error:
>>>
>>> ```
>>> CMake Error at gr-theseus/CMakeLists.txt:84 (find_package):
>>>   By not providing "Findgnuradio-ettus.cmake" in CMAKE_MODULE_PATH this
>>>   project has asked CMake to find a package configuration file provided
>>> by
>>>   "gnuradio-ettus", but CMake did not find one.
>>>
>>>   Could not find a package configuration file provided by
>>> "gnuradio-ettus"
>>>   with any of the following names:
>>>
>>>     gnuradio-ettusConfig.cmake
>>>     gnuradio-ettus-config.cmake
>>>
>>>   Add the installation prefix of "gnuradio-ettus" to CMAKE_PREFIX_PATH
>>> or set
>>>   "gnuradio-ettus_DIR" to a directory containing one of the above
>>> files.  If
>>>   "gnuradio-ettus" provides a separate development package or SDK, be
>>> sure it
>>>   has been installed.
>>> ```
>>>
>>>
>>> Interestingly, if I change the GR_CMAKE_DIR *inside gr-ettus* to
>>> point to ${CMAKE_MODULES_DIR)/gnuradio-ettus (
>>> https://github.com/EttusResearch/gr-ettus/blob/b69260655e974786ea6e611bd91ab578b13ec72a/CMakeLists.txt#L69),
>>> then the gnuradio-ettus cmake modules get installed to
>>> lib/cmake/gnuradio-ettus. Then, in my OOT module, calling
>>> find_package(gnuradio-ettus) finds gr-ettus, and
>>> target_link_libraries(<my-library> gnuradio-ettus) links successfully.
>>>
>>> So: Is this right? Am I missing something obvious here? Should gnuradio
>>> OOT modules set their GR_CMAKE_DIR to gnuradio-<module>?
>>>
>>> Thanks for the help!
>>> EJ
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--00000000000065a55b05a9600ef4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello EJ Kreinar,</div><div><br></div><div>I have som=
ehow made gr-ettus and rfnoc mod tools=C2=A0to work with gnuradio 3.8. I cr=
eated, built and installed the gain rfnoc oot module. And it was working as=
 it should be.</div><div><br></div><div>I created a new branch called worki=
ng-maint-3.8 for gr-ettus and pushed it to my personal repository.</div><di=
v><br></div><div>I have=C2=A0 just modified the cmake files and doxygen fil=
e (which was problem during make process)</div><div><br></div><div>Here is =
the link:</div><div><a href=3D"https://github.com/yaaseen-dev/gr-ettus.git"=
>https://github.com/yaaseen-dev/gr-ettus.git</a><br></div><div><br></div><d=
iv>This is my first time I am dealing with cmake stuff, so, I am also not s=
ure if this is the=C2=A0correct way to modify it. Because as=C2=A0you said,=
 entire rfnoc mod tools need to be updated=C2=A0to gr3.8=C2=A0</div><div>si=
milar to gr_modtools</div><div>.=C2=A0</div><div>But, these fixes worked fo=
r me.</div><div><br></div><div>You can clone this, and check if it=C2=A0wor=
ks for you also.=C2=A0</div><div></div><div><br></div><div>Hope this=C2=A0h=
elps you also</div><div><br></div><div><br></div><div><div dir=3D"ltr" clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><=
div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Regards,<div>Yaaseen</div=
><div><br></div></div></div></div></div></div></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 1 Jul 2020 at 0=
2:44, EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gmail.com">ejkreinar@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"auto">Ron,<div dir=3D"auto"><br></div><div dir=3D"auto">Yes=
, that looks right on target with my results... A little baffling to me tho=
ugh... linking against OOTs seems like a fairly standard use case but maybe=
 it&#39;s less common than I thought. It&#39;s definitely needed for rfnoc =
though.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div d=
ir=3D"auto">Mohamed Yaaseen,<br></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">The change that worked for me was to update GR_CMAKE_DIR=C2=A0in =
gr-ettus to ${CMAKE_MODULES_DIR)/gnuradio-ettus. Then I rebuilt and install=
ed gr-ettus, and my OOT could then call find_package(gnuradio-ettus) and li=
nk against gnuradio-ettus.</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">But I&#39;m really not a cmake expert in any way, so I don&#39;t know if=
 this is the &quot;right&quot; answer. Personally I&#39;m satisfied with th=
e GR_CMAKE_DIR change, but it does change the package name for downstream u=
sers...</div><div dir=3D"auto"><br></div><div dir=3D"auto">I guess the broa=
der question is then... What is &quot;desired&quot; behavior=C2=A0<span sty=
le=3D"font-family:sans-serif">provided by default from gr_modtool</span>=C2=
=A0for finding and linking OOTs?</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">EJ</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Tue, Jun 30, 2020, 10:53 AM Mohamed Yaaseen &lt;<a hre=
f=3D"mailto:mdyaaseen1995@gmail.com" rel=3D"noreferrer noreferrer noreferre=
r" target=3D"_blank">mdyaaseen1995@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello EJ =
Kreinar,</div><div><br></div><div>I just came across=C2=A0this situation. I=
 was trying to create a rfnoc gain tutorial oot module using rfnomodtools. =
But, when I was doing cmake I got some errors with respect to find_package(=
ettus).</div><div>I was just fiddling around with cmakefiles as I am not fa=
miliar with cmake and stuff.=C2=A0</div><div><br></div><div>But, I found a =
problem with the gr-ettus module itself. In the gr-ettus module ettutsConfi=
g.cmake file, there is a line=C2=A0=C2=A0<i><b>include(&quot;${CMAKE_CURREN=
T_LIST_DIR}/ettusTarget.cmake&quot;).=C2=A0</b></i></div><div>This is the f=
ile that rfnoc OOT searches in order to find the package=C2=A0ettus. But, w=
hile make &amp;&amp; make install gr-ettus module installs=C2=A0<b style=3D=
"font-style:italic">gnuradio-ettusTargets.cmake=C2=A0 </b>file at the locat=
ion. Hence, rfnoc OOT module throws an error message during=C2=A0cmake.</di=
v><div><br></div><div>When I corrected the line in gr-ettus and reinstalled=
 it, my OOT module was able to compile=C2=A0 successfully.</div><div><br></=
div><div>But, I am now facing errors during the make process.</div><div><br=
></div><div>I believe the rfnocmodtools template code present inside gr-ett=
us has not been migrated for 3.8 even though gr-ettus is migrated.<br></div=
><div><br></div><div></div><div>In the meantime I will also try to fix the =
error which is thrown during make process. And update you in this thread if=
 I have any success<br></div><div><br></div><div>If you are able to get pas=
t the make process also and install it in gr 3.8. It would be really great.=
..!!!=C2=A0<br></div><br clear=3D"all"><div><div dir=3D"ltr"><div dir=3D"lt=
r"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Regard=
s,<div>Mohamed Yaaseen</div></div></div></div></div></div></div></div></div=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, 30 Jun 2020 at 16:01, EJ Kreinar via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer norefer=
rer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">Hi gnuradio and usrp-users,<br><br>I&#39;m trying to update rfnoc OOT mod=
ules for gnuradio 3.8 (gasp).<div><br></div><div>But I&#39;m having trouble=
=C2=A0finding and linking to gr-ettus specifically, and I wonder how we&#39=
;re supposed to call find_package(&lt;OOT&gt;) and then link to OOT modules=
 in general with the updated cmake workflow... Trying to find and link gr-e=
ttus, I&#39;ve tried a few things...</div><div><br>1) find_package(ettus)</=
div><div><br></div><div>I believe this worked against gnuradio-3.7. Now, I =
get the following error during cmake configure...<br><br>```<br>-- =C2=A0 N=
o package &#39;ettus&#39; found<br>CMake Error at /usr/local/lib/cmake/ettu=
s/ettusConfig.cmake:41 (include):<br>=C2=A0 include could not find load fil=
e:<br>=C2=A0 =C2=A0 /usr/local/lib/cmake/ettus/ettusTarget.cmake</div><div>=
```</div><div><br></div><div>2) find_package(gnuradio-ettus)<br><br>This se=
ems more promising, since GR_LIBRARY_FOO seems to install=C2=A0gnuradio-ett=
us cmake files into the=C2=A0lib/cmake/ettus install location. This fails i=
n cmake configure with the following error:<br><br>```<br>CMake Error at gr=
-theseus/CMakeLists.txt:84 (find_package):<br>=C2=A0 By not providing &quot=
;Findgnuradio-ettus.cmake&quot; in CMAKE_MODULE_PATH this<br>=C2=A0 project=
 has asked CMake to find a package configuration file provided by<br>=C2=A0=
 &quot;gnuradio-ettus&quot;, but CMake did not find one.<br><br>=C2=A0 Coul=
d not find a package configuration file provided by &quot;gnuradio-ettus&qu=
ot;<br>=C2=A0 with any of the following names:<br><br>=C2=A0 =C2=A0 gnuradi=
o-ettusConfig.cmake<br>=C2=A0 =C2=A0 gnuradio-ettus-config.cmake<br><br>=C2=
=A0 Add the installation prefix of &quot;gnuradio-ettus&quot; to CMAKE_PREF=
IX_PATH or set<br>=C2=A0 &quot;gnuradio-ettus_DIR&quot; to a directory cont=
aining one of the above files.=C2=A0 If<br>=C2=A0 &quot;gnuradio-ettus&quot=
; provides a separate development package or SDK, be sure it<br>=C2=A0 has =
been installed.<br>```</div><div><br></div><div><br></div><div>Interestingl=
y, if I change the GR_CMAKE_DIR *inside gr-ettus* to point=C2=A0to ${CMAKE_=
MODULES_DIR)/gnuradio-ettus=C2=A0(<a href=3D"https://github.com/EttusResear=
ch/gr-ettus/blob/b69260655e974786ea6e611bd91ab578b13ec72a/CMakeLists.txt#L6=
9" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">ht=
tps://github.com/EttusResearch/gr-ettus/blob/b69260655e974786ea6e611bd91ab5=
78b13ec72a/CMakeLists.txt#L69</a>), then the gnuradio-ettus cmake modules g=
et installed to lib/cmake/gnuradio-ettus. Then, in my OOT module, calling f=
ind_package(gnuradio-ettus) finds gr-ettus, and target_link_libraries(&lt;m=
y-library&gt; gnuradio-ettus) links successfully.</div><div><br></div><div>=
So: Is this right? Am I missing something obvious here? Should gnuradio OOT=
 modules set their=C2=A0GR_CMAKE_DIR to gnuradio-&lt;module&gt;?=C2=A0</div=
><div><br></div><div>Thanks for the=C2=A0help!<br>EJ</div><div><br></div></=
div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer =
noreferrer noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer noreferrer noreferrer" target=
=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000065a55b05a9600ef4--


--===============2506189483575029878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2506189483575029878==--

