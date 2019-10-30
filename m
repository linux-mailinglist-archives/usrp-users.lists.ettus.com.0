Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5601DEA489
	for <lists+usrp-users@lfdr.de>; Wed, 30 Oct 2019 21:04:34 +0100 (CET)
Received: from [::1] (port=58960 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iPuCi-0006t9-Og; Wed, 30 Oct 2019 16:04:28 -0400
Received: from mail-lf1-f54.google.com ([209.85.167.54]:37746)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1iPuCf-0006aZ-GG
 for usrp-users@lists.ettus.com; Wed, 30 Oct 2019 16:04:25 -0400
Received: by mail-lf1-f54.google.com with SMTP id b20so2579739lfp.4
 for <usrp-users@lists.ettus.com>; Wed, 30 Oct 2019 13:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SdsOLNT2nXvztLjA+BY3M/PfRL7YW2XomznPFzT00zI=;
 b=DW/CaG5o+Aoohj97LK1PqggL0CEjC0MJNmtTlTpsM5TYEaAEQeVM6TrRpcXxtm24Hr
 riDdmoD1wK7QLsqdwtGe3TQXNKAz3i0jehNTjMIqtTWzlxcu6o3KSa1PzGjaf9ZJAEP+
 heMttXcK2CjNqUJ6pUAcWPseI0IgzYLpjklksazs1Y33k5ag6pyxqK0X/geXDPBAWHT0
 IrjY9x585PL2P6j8Gc6U1KdnG2fbNBHF0Oderbnvpn9CcDhDwSAoXCm9BGxlHUTvollz
 v6rp9gjiQKjw2yJyw96YIlV4+qQqMHHvfXHeQnzrw0y5z+kdHHACYZUObH4Y+CNa//NP
 qM0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SdsOLNT2nXvztLjA+BY3M/PfRL7YW2XomznPFzT00zI=;
 b=VmJY1WBcQdDLu3ikyLQ+8wXJFmhahHxN0pOOWlS9W0jnUtlp9kIPczXkiF9JPfvzhV
 5ZdDMQ0I9HqNYNALQFBxG5k785oqiv/y0Uo8rhu8dVFTxvAq0F+fifVVHa467M715YL0
 N6JaoviTw4rhmI9HyitPqfCGuuTdjLGv3aMO+21WJej2bdpUyhQfoUim+eS2vVLcgqtf
 h40j4qyuEYUawpbpGNwwGeDTF8ob7LiHc7xuKDG0bSHgv0VxXTtNI+kmtIE5fOpRN+Fy
 tZiqWCRNrQvO2KlaAHqbyEMyrupkkdcB7dtrFsQ0I7ttIq9kNg/UUM222ML7Qq4r9cQb
 gLHw==
X-Gm-Message-State: APjAAAU6V6GSk60KSKSgn3Dlj5HLySdVbXsy/XsQ0AuO9osG3wNtazp1
 VCaBdMVo2TBFS/kkPtcPlRl5hzGv99GOmaLc8QM=
X-Google-Smtp-Source: APXvYqw8sy/oVc8DqjGsZNJgyEczGvIz0VvPpWKwf/0Ss24HuyJfuYptTcS65OgvA+SMW2JU13L2zXrg2D7POExidhQ=
X-Received: by 2002:ac2:5deb:: with SMTP id z11mr3132lfq.35.1572465823861;
 Wed, 30 Oct 2019 13:03:43 -0700 (PDT)
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
 <CANQ3h38LeBJEBW9W24S=zZ1XqRMvrDfT6fEtGXYcfqnMg6q9Eg@mail.gmail.com>
 <CACSOXP3YEDktEqtEwHV_0mSWysci1W_viSpYLLMehETqVeUTiQ@mail.gmail.com>
In-Reply-To: <CACSOXP3YEDktEqtEwHV_0mSWysci1W_viSpYLLMehETqVeUTiQ@mail.gmail.com>
Date: Wed, 30 Oct 2019 16:03:30 -0400
Message-ID: <CANQ3h390dKM75jEUd3PNXEy1aTtNHCx7zpT-UzOj0dd5PoR29g@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1933937585950580755=="
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

--===============1933937585950580755==
Content-Type: multipart/alternative; boundary="000000000000da52610596263a37"

--000000000000da52610596263a37
Content-Type: text/plain; charset="UTF-8"

Okay, now I'm seeing this:

nuc03@nuc03:~$ /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft
Traceback (most recent call last):
  File "/home/nuc03/gnuradio/gr-uhd/apps/uhd_fft", line 44, in <module>
    from gnuradio import eng_notation
ImportError: No module named gnuradio


On Sat, Oct 26, 2019 at 2:31 PM Ettus Research Support <support@ettus.com>
wrote:

> It now looks like you need to install "python-qt4" to get around this
> issue. Same basic method as "python-six", whatever that was that you did
> successfully. - MLD
>
> On Thu, Oct 24, 2019 at 4:37 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>
>> Yes, I did those steps as well to install gnuradio from source.
>> Installed the binary for python-sip, now I'm getting another error:
>>
>> nuc03@nuc03:~/gnuradio/build$ /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft
>> Traceback (most recent call last):
>>   File "/home/nuc03/gnuradio/gr-uhd/apps/uhd_fft", line 43, in <module>
>>     from PyQt4 import Qt
>> ImportError: No module named PyQt4
>>
>>
>> On Mon, Oct 21, 2019 at 12:19 PM Ettus Research Support <
>> support@ettus.com> wrote:
>>
>>> Hi Saeid - Not sure what's going on with your GR install ... did you do
>>> "sudo make install" after doing "make"? Did you do "sudo ldconfig" after
>>> installing?
>>>
>>> It looks like you need to install "python-sip" to get around this latest
>>> issue. Same basic method as "python-six", whatever that was that you did
>>> successfully. - MLD
>>>
>>> On Fri, Oct 18, 2019 at 3:19 PM Saeid Hashemi via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Okay, so installing python-six fixed that, and I was able to install
>>>> 3.7.13.5 from source.
>>>> The sample apps like uhd_fft are not in the path like they used to be
>>>> with binary installation. And trying it from the apps folder gives me:
>>>>
>>>> nuc03@nuc03:/usr/local/bin$ /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft
>>>> Traceback (most recent call last):
>>>>   File "/home/nuc03/gnuradio/gr-uhd/apps/uhd_fft", line 39, in <module>
>>>>     import sip
>>>> ImportError: No module named sip
>>>>
>>>>
>>>> On Thu, Oct 17, 2019 at 10:26 AM Michael Dickens <
>>>> michael.dickens@ettus.com> wrote:
>>>>
>>>>> Yes sorry about the GR37 release version: 3.7.13.5 is the correct on.
>>>>> Installing Py27-six should be pretty straight forward & should allow you to
>>>>> proceed with that install. GR38 has it's own set of dependencies, some of
>>>>> which overlap with GR37 and some of which don't. You'll want to follow the
>>>>> install guide for your OS to get those dependencies. Good luck! - MLD
>>>>>
>>>>> On Wed, Oct 16, 2019 at 3:02 PM Saeid Hashemi <saeidh@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> Hi Michael,
>>>>>>
>>>>>> The gnuradio git repository does not have a tag for v3.17.14.5, and
>>>>>> using v3.7.13.5 gives me:
>>>>>>
>>>>>> -- Python checking for six - python 2 and 3 compatibility library
>>>>>> -- Python checking for six - python 2 and 3 compatibility library -
>>>>>> not found
>>>>>> CMake Error at volk/CMakeLists.txt:98 (message):
>>>>>>   six - python 2 and 3 compatibility library required to build VOLK
>>>>>>
>>>>>>
>>>>>> -- Configuring incomplete, errors occurred!
>>>>>> See also "/home/nuc03/gnuradio/build/CMakeFiles/CMakeOutput.log".
>>>>>> See also "/home/nuc03/gnuradio/build/CMakeFiles/CMakeError.log".
>>>>>>
>>>>>>
>>>>>> Checking out tag v3.8.0.0 results in Cmake dependency of 3.8 and up,
>>>>>> so I need to install that manually.
>>>>>>
>>>>>>
>>>>>> On Sat, Oct 12, 2019 at 11:02 AM Michael Dickens <
>>>>>> michael.dickens@ettus.com> wrote:
>>>>>>
>>>>>>> OK. Thanks for the info Saeid. I'll look into creating a VM using
>>>>>>> Ubuntu 16.04.1 to see what happens. - MLD
>>>>>>>
>>>>>>> On Fri, Oct 11, 2019 at 4:47 PM Saeid Hashemi <saeidh@gmail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> It's Ubuntu 16.04.1, but yes, I will follow the source build
>>>>>>>> instructions.
>>>>>>>>
>>>>>>>> On Fri, Oct 11, 2019 at 3:11 PM Michael Dickens <
>>>>>>>> michael.dickens@ettus.com> wrote:
>>>>>>>>
>>>>>>>>> Hi Saeid - Thanks for the followup. I totally agree that if you
>>>>>>>>> just "sudo apt install gnuradio", compatible versions should be installed.
>>>>>>>>> Are you using Ubuntu 16.04.6 LTS (Xenial Xerus)? If you choose to install
>>>>>>>>> from source, you can follow instructions such as the GR recommended way
>>>>>>>>> here <
>>>>>>>>> https://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29
>>>>>>>>> >. I have an Ubuntu 18.04 install that went very smoothly using this guide,
>>>>>>>>> but maybe the guide is outdated for older Ubuntu; or, our packages need to
>>>>>>>>> be updated for that OS version ... Cheers! - MLD
>>>>>>>>>
>>>>>>>>> On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi <saeidh@gmail.com>
>>>>>>>>> wrote:
>>>>>>>>>
>>>>>>>>>> I will follow your advice, but it's worth mentioning I simply did
>>>>>>>>>> apt-get gnuradio and should therefore have a compatible version of uhd
>>>>>>>>>> installed automatically as a dependency. I did not install uhd separately.
>>>>>>>>>>
>>>>>>>>> --
>>>>>>>>> Michael Dickens
>>>>>>>>> Ettus Research Technical Support
>>>>>>>>> Email: support@ettus.com
>>>>>>>>> Web: https://ettus.com/
>>>>>>>>>
>>>>>>>>
>>>>>>>
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
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--000000000000da52610596263a37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Okay, now I&#39;m seeing this:<div><br></div><blockquote s=
tyle=3D"margin:0 0 0 40px;border:none;padding:0px"><div><font face=3D"monos=
pace">nuc03@nuc03:~$ /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft</font></div><=
div><font face=3D"monospace">Traceback (most recent call last):</font></div=
><div><font face=3D"monospace">=C2=A0 File &quot;/home/nuc03/gnuradio/gr-uh=
d/apps/uhd_fft&quot;, line 44, in &lt;module&gt;</font></div><div><font fac=
e=3D"monospace">=C2=A0 =C2=A0 from gnuradio import eng_notation</font></div=
><div><font face=3D"monospace">ImportError: No module named gnuradio</font>=
</div></blockquote></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Sat, Oct 26, 2019 at 2:31 PM Ettus Research Support &=
lt;<a href=3D"mailto:support@ettus.com">support@ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">It now=
 looks like you need to install &quot;python-qt4&quot; to get around this i=
ssue. Same basic method as &quot;python-six&quot;, whatever that was that y=
ou did successfully. - MLD</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 24, 2019 at 4:37 PM Saeid Hashe=
mi &lt;<a href=3D"mailto:saeidh@gmail.com" target=3D"_blank">saeidh@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div>Yes, I did those steps as well to install gnuradio =
from source.</div>Installed the binary for python-sip, now I&#39;m getting =
another error:<div><br></div><blockquote style=3D"margin:0px 0px 0px 40px;b=
order:none;padding:0px"><div><font face=3D"monospace">nuc03@nuc03:~/gnuradi=
o/build$ /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft</font></div><div><font fa=
ce=3D"monospace">Traceback (most recent call last):</font></div><div><font =
face=3D"monospace">=C2=A0 File &quot;/home/nuc03/gnuradio/gr-uhd/apps/uhd_f=
ft&quot;, line 43, in &lt;module&gt;</font></div><div><font face=3D"monospa=
ce">=C2=A0 =C2=A0 from PyQt4 import Qt</font></div><div><font face=3D"monos=
pace">ImportError: No module named PyQt4</font></div></blockquote></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, O=
ct 21, 2019 at 12:19 PM Ettus Research Support &lt;<a href=3D"mailto:suppor=
t@ettus.com" target=3D"_blank">support@ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif">Hi Saeid - Not =
sure what&#39;s going on with your GR install ... did you do &quot;sudo mak=
e install&quot; after doing &quot;make&quot;? Did you do &quot;sudo ldconfi=
g&quot; after installing?</div><div class=3D"gmail_default" style=3D"font-f=
amily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:verdana,sans-serif">It looks like you need to install &quot;pyth=
on-sip&quot; to get around this latest issue. Same basic method as &quot;py=
thon-six&quot;, whatever that was that you did successfully. - MLD</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Fri, Oct 18, 2019 at 3:19 PM Saeid Hashemi via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">Okay, so installing python-six fixed that, and I was abl=
e to install 3.7.13.5 from source.<div>The sample apps like uhd_fft are not=
 in the path like they used to be with binary installation. And trying it f=
rom the apps folder gives me:</div><div><br></div><blockquote style=3D"marg=
in:0px 0px 0px 40px;border:none;padding:0px"><div><font face=3D"monospace">=
nuc03@nuc03:/usr/local/bin$ /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft</font>=
</div><div><font face=3D"monospace">Traceback (most recent call last):</fon=
t></div><div><font face=3D"monospace">=C2=A0 File &quot;/home/nuc03/gnuradi=
o/gr-uhd/apps/uhd_fft&quot;, line 39, in &lt;module&gt;</font></div><div><f=
ont face=3D"monospace">=C2=A0 =C2=A0 import sip</font></div><div><font face=
=3D"monospace">ImportError: No module named sip</font></div></blockquote></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Thu, Oct 17, 2019 at 10:26 AM Michael Dickens &lt;<a href=3D"mailto:michae=
l.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>Yes sorry about the GR37 release version: 3.7.13.5 is the correc=
t on. Installing Py27-six should be pretty straight forward &amp; should al=
low you to proceed with that install. GR38 has it&#39;s own set of dependen=
cies, some of which overlap with GR37 and some of which don&#39;t. You&#39;=
ll want to follow the install guide for your OS to get those dependencies. =
Good=C2=A0luck! - MLD</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Oct 16, 2019 at 3:02 PM Saeid Hashemi &l=
t;<a href=3D"mailto:saeidh@gmail.com" target=3D"_blank">saeidh@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">Hi Michael,<div><br></div><div>The gnuradio git repository do=
es not have a tag for v3.17.14.5, and using v3.7.13.5 gives me:</div><div><=
br></div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0=
px"><div><font size=3D"1" face=3D"monospace">-- Python checking for six - p=
ython 2 and 3 compatibility library</font></div><div><font size=3D"1" face=
=3D"monospace">-- Python checking for six - python 2 and 3 compatibility li=
brary - not found</font></div><div><font size=3D"1" face=3D"monospace">CMak=
e Error at volk/CMakeLists.txt:98 (message):</font></div><div><font size=3D=
"1" face=3D"monospace">=C2=A0 six - python 2 and 3 compatibility library re=
quired to build VOLK</font></div><div><font size=3D"1" face=3D"monospace"><=
br></font></div><div><font size=3D"1" face=3D"monospace"><br></font></div><=
div><font size=3D"1" face=3D"monospace">-- Configuring incomplete, errors o=
ccurred!</font></div><div><font size=3D"1" face=3D"monospace">See also &quo=
t;/home/nuc03/gnuradio/build/CMakeFiles/CMakeOutput.log&quot;.</font></div>=
<div><font size=3D"1" face=3D"monospace">See also &quot;/home/nuc03/gnuradi=
o/build/CMakeFiles/CMakeError.log&quot;.</font></div></blockquote><div><br>=
</div><div>Checking out tag v3.8.0.0 results in Cmake dependency of 3.8 and=
 up, so I need to install that manually.</div><div><br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 12=
, 2019 at 11:02 AM Michael Dickens &lt;<a href=3D"mailto:michael.dickens@et=
tus.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">OK. Th=
anks for the info Saeid. I&#39;ll look into creating a VM using Ubuntu 16.0=
4.1 to see what happens. - MLD</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2019 at 4:47 PM Saeid Hashemi=
 &lt;<a href=3D"mailto:saeidh@gmail.com" target=3D"_blank">saeidh@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">It&#39;s Ubuntu 16.04.1, but yes, I will follow the source=
 build instructions.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, Oct 11, 2019 at 3:11 PM Michael Dickens &lt;<a =
href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">michael.dickens=
@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Saeid - Thanks for the=
 followup. I totally agree that if you just &quot;sudo apt install gnuradio=
&quot;, compatible versions should be installed. Are you using Ubuntu 16.04=
.6 LTS (Xenial Xerus)? If you choose to install from source, you can follow=
 instructions such as the GR recommended way here &lt;=C2=A0<a href=3D"http=
s://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29" tar=
get=3D"_blank">https://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xer=
us_.2816.04.29</a> &gt;. I have an Ubuntu=C2=A018.04 install that went very=
=C2=A0smoothly using this guide, but maybe the guide is outdated for older =
Ubuntu; or, our packages need to be updated for that OS version ... Cheers!=
 - MLD</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi &lt;<a href=3D"mailto:s=
aeidh@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I will =
follow your advice, but it&#39;s worth mentioning I simply did apt-get gnur=
adio and should therefore have a compatible version of uhd installed automa=
tically as a dependency. I did not install uhd separately.</div></blockquot=
e></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr">Mich=
ael Dickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto=
:support@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=
=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div=
></div></div></div>
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
</blockquote></div>
</blockquote></div>

--000000000000da52610596263a37--


--===============1933937585950580755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1933937585950580755==--

