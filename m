Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CD9210114
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jul 2020 02:45:11 +0200 (CEST)
Received: from [::1] (port=39056 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jqQs8-0003QA-BK; Tue, 30 Jun 2020 20:45:08 -0400
Received: from mail-ed1-f46.google.com ([209.85.208.46]:46534)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ejkreinar@gmail.com>) id 1jqQs4-0003JA-UG
 for usrp-users@lists.ettus.com; Tue, 30 Jun 2020 20:45:05 -0400
Received: by mail-ed1-f46.google.com with SMTP id dm19so11758834edb.13
 for <usrp-users@lists.ettus.com>; Tue, 30 Jun 2020 17:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kve5/pi+bAVKZLfqqMALjtcWcZSYjJMMKzLqfy3e7o4=;
 b=I4ebmvvmXp3P7YOC5ivlTwCbW82bOu6QocNNYvUSq4N1VKewQEe5x4gNd2Z6eYDTlp
 12rjGbLLNjBN74QdydA3VDDiupPY4iSC7C/u6yeEuRL++MH2738bPx4kcqnF+pQ75MVR
 nkvcVDEpJg0FR4Z/4hIemk0IFeNyzRx8ZvVj2Cz987zSqhpsekOTnmjOOaANqa0zuyw5
 48u8kVeqbOLGFTc7xR8nNAarvl04aotTypzhUTpw1m+/geIWA2rMRd9RK+OqGGB83JGP
 +fbsb6qtDRLR0L8g9WEbkhgjPNSiB2A6xwG/bZM2IUqRQR9t8YFUoMbakRyzmy1jiJ3F
 l8dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kve5/pi+bAVKZLfqqMALjtcWcZSYjJMMKzLqfy3e7o4=;
 b=e6N3HHs5L+ELSvqLddoTRNHLtP80E99NP9F6c2rnaNaRRt96C/raawaP8qXIRHZhgj
 +FUCKVS0jk3FUxD7wI//U/kaU8HEnDcyMP0ofaylL/gVHfp/B5XZyZta3HyjJrhpmAiT
 qJ/WWyxIInBUi7kO31nAnKwdqqoxf2oo49QXCVgTjPQbBhHo51nBbg5a9wlFi0vs/gzx
 VLW8779mj64GL87u2WO+1Rm9yGMaI1DTy+uMhr/ifOKQ7gciistIdUdMamd3/XPir9tK
 XZ4h66y6dSX6WS4BoaU5+fX6Rz1+ra+3h5lNtYWEh4UjkALMyza58VIPv9BJ5Mk3Jo+I
 ZSHA==
X-Gm-Message-State: AOAM531hdAhzU0hmCwnZO797hBCCxQmrrhTGnkluePt4W3xKz6ee9IYl
 YV3+DotnVN6M2w9V4zjdAjZbd0poMs+E/CBlMiI=
X-Google-Smtp-Source: ABdhPJxqKXOoOjefWTL6Zkv1jcYXqIbXPrmABFRj7FPAbnM4WKzY3JnXF8rfAgOiLuVcapkqKyfnK26Ysq6uyM88QAs=
X-Received: by 2002:aa7:c6d3:: with SMTP id b19mr25238562eds.207.1593564263970; 
 Tue, 30 Jun 2020 17:44:23 -0700 (PDT)
MIME-Version: 1.0
References: <CADRnH23bYgB4VKpKEy8r8r=AsPHgSAhfbTV1hFUV_P58RAqzeA@mail.gmail.com>
 <CAN-A3_usASEigFBD4+URCZByVvEW2nfNZg=mMqx3r705EozU=A@mail.gmail.com>
In-Reply-To: <CAN-A3_usASEigFBD4+URCZByVvEW2nfNZg=mMqx3r705EozU=A@mail.gmail.com>
Date: Tue, 30 Jun 2020 20:44:11 -0400
Message-ID: <CADRnH22ozBw2sbW9trphiD9mBj0TqikA8nx-rU1R_aiPRM7HpA@mail.gmail.com>
To: Mohamed Yaaseen <mdyaaseen1995@gmail.com>
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Content-Type: multipart/mixed; boundary="===============6800144411979076217=="
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

--===============6800144411979076217==
Content-Type: multipart/alternative; boundary="000000000000e178b505a95697eb"

--000000000000e178b505a95697eb
Content-Type: text/plain; charset="UTF-8"

Ron,

Yes, that looks right on target with my results... A little baffling to me
though... linking against OOTs seems like a fairly standard use case but
maybe it's less common than I thought. It's definitely needed for rfnoc
though.


Mohamed Yaaseen,

The change that worked for me was to update GR_CMAKE_DIR in gr-ettus to
${CMAKE_MODULES_DIR)/gnuradio-ettus. Then I rebuilt and installed gr-ettus,
and my OOT could then call find_package(gnuradio-ettus) and link against
gnuradio-ettus.

But I'm really not a cmake expert in any way, so I don't know if this is
the "right" answer. Personally I'm satisfied with the GR_CMAKE_DIR change,
but it does change the package name for downstream users...

I guess the broader question is then... What is "desired" behavior provided
by default from gr_modtool for finding and linking OOTs?

EJ

On Tue, Jun 30, 2020, 10:53 AM Mohamed Yaaseen <mdyaaseen1995@gmail.com>
wrote:

> Hello EJ Kreinar,
>
> I just came across this situation. I was trying to create a rfnoc gain
> tutorial oot module using rfnomodtools. But, when I was doing cmake I got
> some errors with respect to find_package(ettus).
> I was just fiddling around with cmakefiles as I am not familiar with cmake
> and stuff.
>
> But, I found a problem with the gr-ettus module itself. In the gr-ettus
> module ettutsConfig.cmake file, there is a line
> *include("${CMAKE_CURRENT_LIST_DIR}/ettusTarget.cmake"). *
> This is the file that rfnoc OOT searches in order to find the
> package ettus. But, while make && make install gr-ettus module installs *gnuradio-ettusTargets.cmake
> *file at the location. Hence, rfnoc OOT module throws an error message
> during cmake.
>
> When I corrected the line in gr-ettus and reinstalled it, my OOT module
> was able to compile  successfully.
>
> But, I am now facing errors during the make process.
>
> I believe the rfnocmodtools template code present inside gr-ettus has not
> been migrated for 3.8 even though gr-ettus is migrated.
>
> In the meantime I will also try to fix the error which is thrown during
> make process. And update you in this thread if I have any success
>
> If you are able to get past the make process also and install it in gr
> 3.8. It would be really great...!!!
>
> Regards,
> Mohamed Yaaseen
>
> On Tue, 30 Jun 2020 at 16:01, EJ Kreinar via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi gnuradio and usrp-users,
>>
>> I'm trying to update rfnoc OOT modules for gnuradio 3.8 (gasp).
>>
>> But I'm having trouble finding and linking to gr-ettus specifically, and
>> I wonder how we're supposed to call find_package(<OOT>) and then link to
>> OOT modules in general with the updated cmake workflow... Trying to find
>> and link gr-ettus, I've tried a few things...
>>
>> 1) find_package(ettus)
>>
>> I believe this worked against gnuradio-3.7. Now, I get the following
>> error during cmake configure...
>>
>> ```
>> --   No package 'ettus' found
>> CMake Error at /usr/local/lib/cmake/ettus/ettusConfig.cmake:41 (include):
>>   include could not find load file:
>>     /usr/local/lib/cmake/ettus/ettusTarget.cmake
>> ```
>>
>> 2) find_package(gnuradio-ettus)
>>
>> This seems more promising, since GR_LIBRARY_FOO seems to
>> install gnuradio-ettus cmake files into the lib/cmake/ettus install
>> location. This fails in cmake configure with the following error:
>>
>> ```
>> CMake Error at gr-theseus/CMakeLists.txt:84 (find_package):
>>   By not providing "Findgnuradio-ettus.cmake" in CMAKE_MODULE_PATH this
>>   project has asked CMake to find a package configuration file provided by
>>   "gnuradio-ettus", but CMake did not find one.
>>
>>   Could not find a package configuration file provided by "gnuradio-ettus"
>>   with any of the following names:
>>
>>     gnuradio-ettusConfig.cmake
>>     gnuradio-ettus-config.cmake
>>
>>   Add the installation prefix of "gnuradio-ettus" to CMAKE_PREFIX_PATH or
>> set
>>   "gnuradio-ettus_DIR" to a directory containing one of the above files.
>> If
>>   "gnuradio-ettus" provides a separate development package or SDK, be
>> sure it
>>   has been installed.
>> ```
>>
>>
>> Interestingly, if I change the GR_CMAKE_DIR *inside gr-ettus* to point to
>> ${CMAKE_MODULES_DIR)/gnuradio-ettus (
>> https://github.com/EttusResearch/gr-ettus/blob/b69260655e974786ea6e611bd91ab578b13ec72a/CMakeLists.txt#L69),
>> then the gnuradio-ettus cmake modules get installed to
>> lib/cmake/gnuradio-ettus. Then, in my OOT module, calling
>> find_package(gnuradio-ettus) finds gr-ettus, and
>> target_link_libraries(<my-library> gnuradio-ettus) links successfully.
>>
>> So: Is this right? Am I missing something obvious here? Should gnuradio
>> OOT modules set their GR_CMAKE_DIR to gnuradio-<module>?
>>
>> Thanks for the help!
>> EJ
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000e178b505a95697eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ron,<div dir=3D"auto"><br></div><div dir=3D"auto">Yes, th=
at looks right on target with my results... A little baffling to me though.=
.. linking against OOTs seems like a fairly standard use case but maybe it&=
#39;s less common than I thought. It&#39;s definitely needed for rfnoc thou=
gh.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Mohamed Yaaseen,<br></div><div dir=3D"auto"><br></div><div dir=3D=
"auto">The change that worked for me was to update GR_CMAKE_DIR=C2=A0in gr-=
ettus to ${CMAKE_MODULES_DIR)/gnuradio-ettus. Then I rebuilt and installed =
gr-ettus, and my OOT could then call find_package(gnuradio-ettus) and link =
against gnuradio-ettus.</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
But I&#39;m really not a cmake expert in any way, so I don&#39;t know if th=
is is the &quot;right&quot; answer. Personally I&#39;m satisfied with the G=
R_CMAKE_DIR change, but it does change the package name for downstream user=
s...</div><div dir=3D"auto"><br></div><div dir=3D"auto">I guess the broader=
 question is then... What is &quot;desired&quot; behavior=C2=A0<span style=
=3D"font-family:sans-serif">provided by default from gr_modtool</span>=C2=
=A0for finding and linking OOTs?</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">EJ</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Tue, Jun 30, 2020, 10:53 AM Mohamed Yaaseen &lt;<a hre=
f=3D"mailto:mdyaaseen1995@gmail.com" rel=3D"noreferrer noreferrer noreferre=
r" target=3D"_blank">mdyaaseen1995@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"ltr"><div>Hello EJ Kreinar,</div><div>=
<br></div><div>I just came across=C2=A0this situation. I was trying to crea=
te a rfnoc gain tutorial oot module using rfnomodtools. But, when I was doi=
ng cmake I got some errors with respect to find_package(ettus).</div><div>I=
 was just fiddling around with cmakefiles as I am not familiar with cmake a=
nd stuff.=C2=A0</div><div><br></div><div>But, I found a problem with the gr=
-ettus module itself. In the gr-ettus module ettutsConfig.cmake file, there=
 is a line=C2=A0=C2=A0<i><b>include(&quot;${CMAKE_CURRENT_LIST_DIR}/ettusTa=
rget.cmake&quot;).=C2=A0</b></i></div><div>This is the file that rfnoc OOT =
searches in order to find the package=C2=A0ettus. But, while make &amp;&amp=
; make install gr-ettus module installs=C2=A0<b style=3D"font-style:italic"=
>gnuradio-ettusTargets.cmake=C2=A0 </b>file at the location. Hence, rfnoc O=
OT module throws an error message during=C2=A0cmake.</div><div><br></div><d=
iv>When I corrected the line in gr-ettus and reinstalled it, my OOT module =
was able to compile=C2=A0 successfully.</div><div><br></div><div>But, I am =
now facing errors during the make process.</div><div><br></div><div>I belie=
ve the rfnocmodtools template code present inside gr-ettus has not been mig=
rated for 3.8 even though gr-ettus is migrated.<br></div><div><br></div><di=
v></div><div>In the meantime I will also try to fix the error which is thro=
wn during make process. And update you in this thread if I have any success=
<br></div><div><br></div><div>If you are able to get past the make process =
also and install it in gr 3.8. It would be really great...!!!=C2=A0<br></di=
v><br clear=3D"all"><div><div dir=3D"ltr" data-smartmail=3D"gmail_signature=
"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div di=
r=3D"ltr">Regards,<div>Mohamed Yaaseen</div></div></div></div></div></div><=
/div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Tue, 30 Jun 2020 at 16:01, EJ Kreinar via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer nor=
eferrer noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">Hi gnuradio and usrp-users,<br><br>I&#39;m trying to updat=
e rfnoc OOT modules for gnuradio 3.8 (gasp).<div><br></div><div>But I&#39;m=
 having trouble=C2=A0finding and linking to gr-ettus specifically, and I wo=
nder how we&#39;re supposed to call find_package(&lt;OOT&gt;) and then link=
 to OOT modules in general with the updated cmake workflow... Trying to fin=
d and link gr-ettus, I&#39;ve tried a few things...</div><div><br>1) find_p=
ackage(ettus)</div><div><br></div><div>I believe this worked against gnurad=
io-3.7. Now, I get the following error during cmake configure...<br><br>```=
<br>-- =C2=A0 No package &#39;ettus&#39; found<br>CMake Error at /usr/local=
/lib/cmake/ettus/ettusConfig.cmake:41 (include):<br>=C2=A0 include could no=
t find load file:<br>=C2=A0 =C2=A0 /usr/local/lib/cmake/ettus/ettusTarget.c=
make</div><div>```</div><div><br></div><div>2) find_package(gnuradio-ettus)=
<br><br>This seems more promising, since GR_LIBRARY_FOO seems to install=C2=
=A0gnuradio-ettus cmake files into the=C2=A0lib/cmake/ettus install locatio=
n. This fails in cmake configure with the following error:<br><br>```<br>CM=
ake Error at gr-theseus/CMakeLists.txt:84 (find_package):<br>=C2=A0 By not =
providing &quot;Findgnuradio-ettus.cmake&quot; in CMAKE_MODULE_PATH this<br=
>=C2=A0 project has asked CMake to find a package configuration file provid=
ed by<br>=C2=A0 &quot;gnuradio-ettus&quot;, but CMake did not find one.<br>=
<br>=C2=A0 Could not find a package configuration file provided by &quot;gn=
uradio-ettus&quot;<br>=C2=A0 with any of the following names:<br><br>=C2=A0=
 =C2=A0 gnuradio-ettusConfig.cmake<br>=C2=A0 =C2=A0 gnuradio-ettus-config.c=
make<br><br>=C2=A0 Add the installation prefix of &quot;gnuradio-ettus&quot=
; to CMAKE_PREFIX_PATH or set<br>=C2=A0 &quot;gnuradio-ettus_DIR&quot; to a=
 directory containing one of the above files.=C2=A0 If<br>=C2=A0 &quot;gnur=
adio-ettus&quot; provides a separate development package or SDK, be sure it=
<br>=C2=A0 has been installed.<br>```</div><div><br></div><div><br></div><d=
iv>Interestingly, if I change the GR_CMAKE_DIR *inside gr-ettus* to point=
=C2=A0to ${CMAKE_MODULES_DIR)/gnuradio-ettus=C2=A0(<a href=3D"https://githu=
b.com/EttusResearch/gr-ettus/blob/b69260655e974786ea6e611bd91ab578b13ec72a/=
CMakeLists.txt#L69" rel=3D"noreferrer noreferrer noreferrer noreferrer" tar=
get=3D"_blank">https://github.com/EttusResearch/gr-ettus/blob/b69260655e974=
786ea6e611bd91ab578b13ec72a/CMakeLists.txt#L69</a>), then the gnuradio-ettu=
s cmake modules get installed to lib/cmake/gnuradio-ettus. Then, in my OOT =
module, calling find_package(gnuradio-ettus) finds gr-ettus, and target_lin=
k_libraries(&lt;my-library&gt; gnuradio-ettus) links successfully.</div><di=
v><br></div><div>So: Is this right? Am I missing something obvious here? Sh=
ould gnuradio OOT modules set their=C2=A0GR_CMAKE_DIR to gnuradio-&lt;modul=
e&gt;?=C2=A0</div><div><br></div><div>Thanks for the=C2=A0help!<br>EJ</div>=
<div><br></div></div>
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

--000000000000e178b505a95697eb--


--===============6800144411979076217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6800144411979076217==--

