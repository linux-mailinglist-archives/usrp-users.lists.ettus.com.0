Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 989BCE3D6D
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2019 22:38:46 +0200 (CEST)
Received: from [::1] (port=32946 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNjsY-0006Lh-Pe; Thu, 24 Oct 2019 16:38:42 -0400
Received: from mail-lj1-f173.google.com ([209.85.208.173]:34213)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1iNjsU-0006Hn-FL
 for usrp-users@lists.ettus.com; Thu, 24 Oct 2019 16:38:38 -0400
Received: by mail-lj1-f173.google.com with SMTP id j19so157161lja.1
 for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2019 13:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+HnHSNEUTqVOI66dUgWPAis5ZeKG7eAzqryTRRsBt9g=;
 b=HyFW74f9sxeGewEA10DJOC+XliZspnnocS8bolalCrmOLN9GqMMmd3ZVzT6pHuNhms
 YjhPc+Aeytu+zUxhBGBfvg8nU38RkZRh6NCU6o7i4Y5gRD5crfTArHFdCmH5XA/NW96T
 s4wnGY20/CbzyxUtqIZjybkKd/vJdw3/Bn6toBpWO1iln464US9kyWheQKKZ2MUk5LBr
 qR0v62gAh6143OUXqq0s6ezaPSlka+bnY5/5S7is/j61bMSIYQuUFYC4Vt5QNpRUTnMM
 ET0gRo1rkgckbXD4njSCZ6RPQiNVmhDyTu/DOEszuL63o4kp8jnaHtO5r6khbBKPtKAu
 PxjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+HnHSNEUTqVOI66dUgWPAis5ZeKG7eAzqryTRRsBt9g=;
 b=RZeW3W97IzIRSNF2YjMENxYtrFIwjt4O0MaXx6e7gLPRK5Ngkzfs+HP9kWwQ/BgwFF
 1rJH0MBTQDSkB+imxBeEvIw1DnLd1aTdntEOoQnFpuy+ysnsqr/yDzYC9EZNfgvDviJO
 +zerWXY/Q+HtKuHeyfJ1GApA9xYgSBvmrwR0IdFcWMYdPtqxyQwOrEqntelKBmBLfjVs
 ZK1+TuDjjCAfMy/AkyKhe/lmd2VrnKxFh0ex6UenvW/MgsiE7Jc9x3x+f4UX6QMQbkLb
 VioEcE63Ig91JJyzGuCDr+Y9Ze0anQ8x6iO6jI12EbVlmp1El6jvCey74DIbRPL4vnvD
 SF/w==
X-Gm-Message-State: APjAAAV+5D6MfQVjPV/iBWhOpzpLnPhcaz6SdPpivQhM+NVXxc0nRxWD
 KaUQB0rYD0bubp1dg+11/XnhbjS83WmSlWs0yME=
X-Google-Smtp-Source: APXvYqw4pQd+Ui7V281TtAO5kAQkBMYZq+AqjLYF8wwrS16vldw4st6dZ4ucgRtop+8UItrBpUUVRDud2X3w3g7a02I=
X-Received: by 2002:a2e:3919:: with SMTP id g25mr26867632lja.162.1571949476719; 
 Thu, 24 Oct 2019 13:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h3_fwR=baRxHo+Aicms8C3CFnWzR51qSS99xo2u--OY2vg@mail.gmail.com>
 <CAGNhwTNRQwC2-gVFQFFyfk0ubGCfoL2a1kShguyMny1Y_9Xw_g@mail.gmail.com>
 <CANQ3h39_-YDpCHEgCcR=r3z=iK7QOmJPFYnY8DATs5++zh+uug@mail.gmail.com>
 <CAGNhwTPELUny7ZaVY18KzPvmD3enezmhMLvypUxUZ5qD3zw+cg@mail.gmail.com>
 <CANQ3h39YJO_iNBdg8_Psx8fHoZGo-aJsESJTBRVf0G1-enZAkw@mail.gmail.com>
 <CAGNhwTP9xwKbDUN49knKmdPzu-yo3rwfzbnvx3YqLuwV3+jyVg@mail.gmail.com>
 <CANQ3h3-6yNAt2v35kUR1z9sNhu7_6M1h3ZsANpDMpueksf2b1w@mail.gmail.com>
 <CAGNhwTP7QX-fTNWNwCKsp0t8d072ovECMA9Z3JMEYyhozkinnA@mail.gmail.com>
 <CANQ3h3_guExuKAV6gqNjEuaVLiOMYL_WaqQoPL655HYRs3_0TA@mail.gmail.com>
 <CACSOXP0EnmmQqMA8srL_5+MrA-8pR5pHcrB10cks_ziY9t=L7Q@mail.gmail.com>
In-Reply-To: <CACSOXP0EnmmQqMA8srL_5+MrA-8pR5pHcrB10cks_ziY9t=L7Q@mail.gmail.com>
Date: Thu, 24 Oct 2019 16:37:41 -0400
Message-ID: <CANQ3h38LeBJEBW9W24S=zZ1XqRMvrDfT6fEtGXYcfqnMg6q9Eg@mail.gmail.com>
To: Ettus Research Support <support@ettus.com>
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
Content-Type: multipart/mixed; boundary="===============6397702978547327026=="
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

--===============6397702978547327026==
Content-Type: multipart/alternative; boundary="0000000000002a31ac0595ae0287"

--0000000000002a31ac0595ae0287
Content-Type: text/plain; charset="UTF-8"

Yes, I did those steps as well to install gnuradio from source.
Installed the binary for python-sip, now I'm getting another error:

nuc03@nuc03:~/gnuradio/build$ /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft
Traceback (most recent call last):
  File "/home/nuc03/gnuradio/gr-uhd/apps/uhd_fft", line 43, in <module>
    from PyQt4 import Qt
ImportError: No module named PyQt4


On Mon, Oct 21, 2019 at 12:19 PM Ettus Research Support <support@ettus.com>
wrote:

> Hi Saeid - Not sure what's going on with your GR install ... did you do
> "sudo make install" after doing "make"? Did you do "sudo ldconfig" after
> installing?
>
> It looks like you need to install "python-sip" to get around this latest
> issue. Same basic method as "python-six", whatever that was that you did
> successfully. - MLD
>
> On Fri, Oct 18, 2019 at 3:19 PM Saeid Hashemi via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Okay, so installing python-six fixed that, and I was able to install
>> 3.7.13.5 from source.
>> The sample apps like uhd_fft are not in the path like they used to be
>> with binary installation. And trying it from the apps folder gives me:
>>
>> nuc03@nuc03:/usr/local/bin$ /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft
>> Traceback (most recent call last):
>>   File "/home/nuc03/gnuradio/gr-uhd/apps/uhd_fft", line 39, in <module>
>>     import sip
>> ImportError: No module named sip
>>
>>
>> On Thu, Oct 17, 2019 at 10:26 AM Michael Dickens <
>> michael.dickens@ettus.com> wrote:
>>
>>> Yes sorry about the GR37 release version: 3.7.13.5 is the correct on.
>>> Installing Py27-six should be pretty straight forward & should allow you to
>>> proceed with that install. GR38 has it's own set of dependencies, some of
>>> which overlap with GR37 and some of which don't. You'll want to follow the
>>> install guide for your OS to get those dependencies. Good luck! - MLD
>>>
>>> On Wed, Oct 16, 2019 at 3:02 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>>>
>>>> Hi Michael,
>>>>
>>>> The gnuradio git repository does not have a tag for v3.17.14.5, and
>>>> using v3.7.13.5 gives me:
>>>>
>>>> -- Python checking for six - python 2 and 3 compatibility library
>>>> -- Python checking for six - python 2 and 3 compatibility library - not
>>>> found
>>>> CMake Error at volk/CMakeLists.txt:98 (message):
>>>>   six - python 2 and 3 compatibility library required to build VOLK
>>>>
>>>>
>>>> -- Configuring incomplete, errors occurred!
>>>> See also "/home/nuc03/gnuradio/build/CMakeFiles/CMakeOutput.log".
>>>> See also "/home/nuc03/gnuradio/build/CMakeFiles/CMakeError.log".
>>>>
>>>>
>>>> Checking out tag v3.8.0.0 results in Cmake dependency of 3.8 and up, so
>>>> I need to install that manually.
>>>>
>>>>
>>>> On Sat, Oct 12, 2019 at 11:02 AM Michael Dickens <
>>>> michael.dickens@ettus.com> wrote:
>>>>
>>>>> OK. Thanks for the info Saeid. I'll look into creating a VM using
>>>>> Ubuntu 16.04.1 to see what happens. - MLD
>>>>>
>>>>> On Fri, Oct 11, 2019 at 4:47 PM Saeid Hashemi <saeidh@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> It's Ubuntu 16.04.1, but yes, I will follow the source build
>>>>>> instructions.
>>>>>>
>>>>>> On Fri, Oct 11, 2019 at 3:11 PM Michael Dickens <
>>>>>> michael.dickens@ettus.com> wrote:
>>>>>>
>>>>>>> Hi Saeid - Thanks for the followup. I totally agree that if you just
>>>>>>> "sudo apt install gnuradio", compatible versions should be installed. Are
>>>>>>> you using Ubuntu 16.04.6 LTS (Xenial Xerus)? If you choose to install from
>>>>>>> source, you can follow instructions such as the GR recommended way here <
>>>>>>> https://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29
>>>>>>> >. I have an Ubuntu 18.04 install that went very smoothly using this guide,
>>>>>>> but maybe the guide is outdated for older Ubuntu; or, our packages need to
>>>>>>> be updated for that OS version ... Cheers! - MLD
>>>>>>>
>>>>>>> On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi <saeidh@gmail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> I will follow your advice, but it's worth mentioning I simply did
>>>>>>>> apt-get gnuradio and should therefore have a compatible version of uhd
>>>>>>>> installed automatically as a dependency. I did not install uhd separately.
>>>>>>>>
>>>>>>> --
>>>>>>> Michael Dickens
>>>>>>> Ettus Research Technical Support
>>>>>>> Email: support@ettus.com
>>>>>>> Web: https://ettus.com/
>>>>>>>
>>>>>>
>>>>>
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
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000002a31ac0595ae0287
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, I did those steps as well to install gnuradio fr=
om source.</div>Installed the binary for python-sip, now I&#39;m getting an=
other error:<div><br></div><blockquote style=3D"margin:0 0 0 40px;border:no=
ne;padding:0px"><div><font face=3D"monospace">nuc03@nuc03:~/gnuradio/build$=
 /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft</font></div><div><font face=3D"mo=
nospace">Traceback (most recent call last):</font></div><div><font face=3D"=
monospace">=C2=A0 File &quot;/home/nuc03/gnuradio/gr-uhd/apps/uhd_fft&quot;=
, line 43, in &lt;module&gt;</font></div><div><font face=3D"monospace">=C2=
=A0 =C2=A0 from PyQt4 import Qt</font></div><div><font face=3D"monospace">I=
mportError: No module named PyQt4</font></div></blockquote></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 21, =
2019 at 12:19 PM Ettus Research Support &lt;<a href=3D"mailto:support@ettus=
.com">support@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif">Hi Saeid - Not sure what&#39;s going on=
 with your GR install ... did you do &quot;sudo make install&quot; after do=
ing &quot;make&quot;? Did you do &quot;sudo ldconfig&quot; after installing=
?</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif=
"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-=
serif">It looks like you need to install &quot;python-sip&quot; to get arou=
nd this latest issue. Same basic method as &quot;python-six&quot;, whatever=
 that was that you did successfully. - MLD</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 18, 2019 at 3:1=
9 PM Saeid Hashemi via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Okay,=
 so installing python-six fixed that, and I was able to install 3.7.13.5 fr=
om source.<div>The sample apps like uhd_fft are not in the path like they u=
sed to be with binary installation. And trying it from the apps folder give=
s me:</div><div><br></div><blockquote style=3D"margin:0px 0px 0px 40px;bord=
er:none;padding:0px"><div><font face=3D"monospace">nuc03@nuc03:/usr/local/b=
in$ /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft</font></div><div><font face=3D=
"monospace">Traceback (most recent call last):</font></div><div><font face=
=3D"monospace">=C2=A0 File &quot;/home/nuc03/gnuradio/gr-uhd/apps/uhd_fft&q=
uot;, line 39, in &lt;module&gt;</font></div><div><font face=3D"monospace">=
=C2=A0 =C2=A0 import sip</font></div><div><font face=3D"monospace">ImportEr=
ror: No module named sip</font></div></blockquote></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 17, 2019 at 1=
0:26 AM Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" ta=
rget=3D"_blank">michael.dickens@ettus.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Yes sorry ab=
out the GR37 release version: 3.7.13.5 is the correct on. Installing Py27-s=
ix should be pretty straight forward &amp; should allow you to proceed with=
 that install. GR38 has it&#39;s own set of dependencies, some of which ove=
rlap with GR37 and some of which don&#39;t. You&#39;ll want to follow the i=
nstall guide for your OS to get those dependencies. Good=C2=A0luck! - MLD</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Wed, Oct 16, 2019 at 3:02 PM Saeid Hashemi &lt;<a href=3D"mailto:sae=
idh@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Michae=
l,<div><br></div><div>The gnuradio git repository does not have a tag for v=
3.17.14.5, and using v3.7.13.5 gives me:</div><div><br></div><blockquote st=
yle=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><font size=3D"=
1" face=3D"monospace">-- Python checking for six - python 2 and 3 compatibi=
lity library</font></div><div><font size=3D"1" face=3D"monospace">-- Python=
 checking for six - python 2 and 3 compatibility library - not found</font>=
</div><div><font size=3D"1" face=3D"monospace">CMake Error at volk/CMakeLis=
ts.txt:98 (message):</font></div><div><font size=3D"1" face=3D"monospace">=
=C2=A0 six - python 2 and 3 compatibility library required to build VOLK</f=
ont></div><div><font size=3D"1" face=3D"monospace"><br></font></div><div><f=
ont size=3D"1" face=3D"monospace"><br></font></div><div><font size=3D"1" fa=
ce=3D"monospace">-- Configuring incomplete, errors occurred!</font></div><d=
iv><font size=3D"1" face=3D"monospace">See also &quot;/home/nuc03/gnuradio/=
build/CMakeFiles/CMakeOutput.log&quot;.</font></div><div><font size=3D"1" f=
ace=3D"monospace">See also &quot;/home/nuc03/gnuradio/build/CMakeFiles/CMak=
eError.log&quot;.</font></div></blockquote><div><br></div><div>Checking out=
 tag v3.8.0.0 results in Cmake dependency of 3.8 and up, so I need to insta=
ll that manually.</div><div><br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 12, 2019 at 11:02 AM Mich=
ael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_bla=
nk">michael.dickens@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">OK. Thanks for the info Saeid=
. I&#39;ll look into creating a VM using Ubuntu 16.04.1 to see what happens=
. - MLD</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Oct 11, 2019 at 4:47 PM Saeid Hashemi &lt;<a href=3D"mailto:=
saeidh@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">It&#39=
;s Ubuntu 16.04.1, but yes, I will follow the source build instructions.</d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Fri, Oct 11, 2019 at 3:11 PM Michael Dickens &lt;<a href=3D"mailto:michael.=
dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div dir=3D"ltr">Hi=C2=A0Saeid - Thanks for the followup. I totally agr=
ee that if you just &quot;sudo apt install gnuradio&quot;, compatible versi=
ons should be installed. Are you using Ubuntu 16.04.6 LTS (Xenial Xerus)? I=
f you choose to install from source, you can follow instructions such as th=
e GR recommended way here &lt;=C2=A0<a href=3D"https://wiki.gnuradio.org/in=
dex.php/UbuntuInstall#Xenial_Xerus_.2816.04.29" target=3D"_blank">https://w=
iki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29</a> &gt;.=
 I have an Ubuntu=C2=A018.04 install that went very=C2=A0smoothly using thi=
s guide, but maybe the guide is outdated for older Ubuntu; or, our packages=
 need to be updated for that OS version ... Cheers! - MLD</div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 20=
19 at 2:24 PM Saeid Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com" target=
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
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ettus Research T=
echnical Support<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_=
blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=
=3D"_blank">https://ettus.com/</a></div></div></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000002a31ac0595ae0287--


--===============6397702978547327026==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6397702978547327026==--

