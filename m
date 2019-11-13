Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFB2FB411
	for <lists+usrp-users@lfdr.de>; Wed, 13 Nov 2019 16:47:59 +0100 (CET)
Received: from [::1] (port=53632 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUus4-0004GU-FA; Wed, 13 Nov 2019 10:47:52 -0500
Received: from mail-lj1-f176.google.com ([209.85.208.176]:35479)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jlockhartrt@gmail.com>)
 id 1iUus0-0004Cv-4n
 for usrp-users@lists.ettus.com; Wed, 13 Nov 2019 10:47:48 -0500
Received: by mail-lj1-f176.google.com with SMTP id r7so3139985ljg.2
 for <usrp-users@lists.ettus.com>; Wed, 13 Nov 2019 07:47:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QU+yKhkL25SUap6S+ItLRl5kvOvVrdJhMJ0u67T4PjU=;
 b=NBt340Yx72A2khv4YZZGQvWjRZf+HHYG2pZQPijGmHe9dJAGRwefl/TnyiA2yZ2qpH
 t7lr0Ck4PJpVt3ANM4UPcS/jk972j0kh/HxOa76tFcIAlNdX/xC0mSpb9OJrDycZF3mn
 daN5+ySojVjickCWxuGl7lgKlNPlTJVS1rVGJgppaUZSAXJuHF2T91whGJQqVmW2RM9E
 fPMeaGO3UKEUe5eJHTsOGYbwnSTsSc7uDTSpINU5XVSOwA41nmYTCW5VwYcLMcuy6cxW
 v79zh2sPKxreLcoLZRzRtuovzwOIOAktwbiz6+58YYNBff/9f6EekROJ66DICI7HmQaz
 QFyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QU+yKhkL25SUap6S+ItLRl5kvOvVrdJhMJ0u67T4PjU=;
 b=LlzciXdGlrWHwFOWOwoUaPTVnfkhkCDFP06bRnvtF3+/pz1LJsqfixjJRxnxvEMRKt
 1lBheZngXAracO7634QoWkHqq0Gooh7x//NtPzpuZDfMgCCfkvJo2PhpQMC2cVnl20v/
 YmbgdN+LNJCTYP4V3m9ZTpW0CcGaYyqPvXwARJBGE67xqi8+gckd+RbUwSEgKFBZLmzu
 R5taIuQ+2VIfA11UMup9bx4ymjRArIIG9ho0FuJiuKS09z7l5Gd5tIxQ19i5l5HJXbTI
 7VJbHzx7KUnH1PhibqcmRZWzCubm7IXHpnwdE/ltWgPb/eXENWnKQtgNqPLGgUVS2s/5
 t4WQ==
X-Gm-Message-State: APjAAAV2lKg/cUqNsYKSTCvyRPCCtIaM4ZrTF1oEPEZ05s+z2kDraucC
 Ohjt5xFoYDb+AZV5/j/WH3Pr6wwIKYKMK9ANlmQ=
X-Google-Smtp-Source: APXvYqxC6J1CV9389aCy+jhfpXPZQ87J6I0ZWdLjm1kw1vc9xxDBuB2bFeAyUixg4ejVlaBpwl8HMDTi0s9ls0w7EkQ=
X-Received: by 2002:a05:651c:209:: with SMTP id
 y9mr2984939ljn.65.1573660026802; 
 Wed, 13 Nov 2019 07:47:06 -0800 (PST)
MIME-Version: 1.0
References: <CALY+5sK3V1J+r2Vrf1gw=-Ok=L9OoAks-oqkBPFqtcnRusLomw@mail.gmail.com>
 <CA+JMMq9wAx+ML3=AsrSjyi+-E0gQrub0UnV8BC_wS7+ypANkFg@mail.gmail.com>
 <CALY+5sK3M_Jb0aAv9QWoC+kHfn=8UPpWo1i94_oWXxy0JjU13g@mail.gmail.com>
 <CAL7q81uDv2=rZSe0vmx+AzN1AE8uPgYDF1NNt_2aYeE9KiXSHg@mail.gmail.com>
 <CA+JMMq9McBUDdfMotYf7cPMdmgLcdEPiTotW=sVOYv+QFrf9UQ@mail.gmail.com>
 <CALY+5sJ_co9mAFUsXyi647W3DW18wc4Ruc+9UaUpppFxt1r29Q@mail.gmail.com>
 <CADRnH21gzFR3-aQSet4tS1fks5Rdp2qjSH_p8JerhY+AL=YTaw@mail.gmail.com>
In-Reply-To: <CADRnH21gzFR3-aQSet4tS1fks5Rdp2qjSH_p8JerhY+AL=YTaw@mail.gmail.com>
Date: Wed, 13 Nov 2019 10:46:55 -0500
Message-ID: <CALY+5s+UO+SUdKjdyb-H6t40q54reOD-n396DoUh_U_Bk9-+yQ@mail.gmail.com>
To: EJ Kreinar <ejkreinar@gmail.com>
Subject: Re: [USRP-users] Receiving IO Block Error when Using RFNoC Split
 Stream
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathan Lockhart via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathan Lockhart <jlockhartrt@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1262092343088237408=="
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

--===============1262092343088237408==
Content-Type: multipart/alternative; boundary="000000000000e5166805973c4679"

--000000000000e5166805973c4679
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Greetings EJ,

Thanks for the info. I haven't had time to grab the new block as my dev box
is packed for moving this weekend. I will get it downloaded and try it as
soon as I can.

Regards,
Jon

On Sat, Nov 9, 2019 at 9:48 AM EJ Kreinar <ejkreinar@gmail.com> wrote:

> Hi there,
>
> Just want to chime in since I recently went through the upgrade process t=
o
> UHD-3.14...
>
> Can you confirm you're using uhd-3.14? If so, this is actually a split
> stream fpga bug caused by the commit Jon referred to, not the "not enough
> bandwidth" problem.
>
> Fortunately, rather than referring the old commit, the bug seems to have
> been fixed in October on the master branch: https://
> github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203eb62ae=
26c9
> (but not yet ported onto 3.14)
>
> I just cherry-picked 1102779f onto my UHD-3.14 and it cleaned it up for m=
e.
>
> I assume this will eventually make it to the UHD-3.14 branch? But if not
> the cherry pick works fine
>
> EJ
>
>
> On Fri, Nov 8, 2019, 2:43 PM Jonathan Lockhart via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Jonathon,
>>
>> I will give that a try and see if it works.
>>
>>
>> Nick,
>>
>> If the revert on Split_Stream fails, I will try switching from ce_clk to
>> bus_clk and give that a try.
>>
>>
>> Regards,
>> Jon
>>
>> On Fri, Nov 8, 2019 at 1:52 PM Nick Foster <bistromath@gmail.com> wrote:
>>
>>> Jonathon (Pendlum), correct me if I'm wrong, but I think this is the
>>> usual split-stream-demands-more-bandwidth-than-RFNoC-bus-allows problem=
.
>>>
>>> Jonathan (Lockhart), if I'm right, then in your
>>> rfnoc_ce_auto_inst_e310.v, if you change the ce_clk/ce_rst in the
>>> noc_block_split_stream instantiation to bus_clk/bus_rst, this may fix t=
he
>>> problem.
>>>
>>> Nick
>>>
>>> On Fri, Nov 8, 2019 at 10:20 AM Jonathon Pendlum <
>>> jonathon.pendlum@ettus.com> wrote:
>>>
>>>> Hi Jon,
>>>>
>>>> Can you try reverting commit e39334fe on the fpga repo and rebuilding
>>>> your bitstream? Let me know if that makes a difference or not.
>>>>
>>>> Jonathon
>>>>
>>>> On Sat, Nov 9, 2019 at 12:13 AM Jonathan Lockhart via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Greetings Nick,
>>>>>
>>>>> Here is the screenshot of my GR flow graph, though it shouldn't matte=
r
>>>>> as the Split_Stream RFNoC Block I believe is a failure of the python =
or
>>>>> Verilog but the solutions in the link I sent in my previous email did=
 not
>>>>> resolve the issue.
>>>>>
>>>>> [image: Screenshot from 2019-11-08 10-06-50.png]
>>>>>
>>>>> Regards,
>>>>> Jon
>>>>>
>>>>> On Thu, Nov 7, 2019 at 5:33 PM Nick Foster <bistromath@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> Can you be more specific about what your flowgraph looks like?
>>>>>>
>>>>>> On Thu, Nov 7, 2019 at 2:22 PM Jonathan Lockhart via USRP-users <
>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>
>>>>>>> Greetings,
>>>>>>>
>>>>>>> I was wondering if anyone had encountered the following error and
>>>>>>> had a way to fix it?
>>>>>>>
>>>>>>> [INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
>>>>>>> UHD_3.14.1.HEAD-0-g0347a6d8
>>>>>>> [INFO] [E300] Loading FPGA image: /home/root/localinstall/e300.bit.=
..
>>>>>>> [INFO] [E300] FPGA image loaded
>>>>>>> [INFO] [E300] Detecting internal GPS
>>>>>>> .... [INFO] [E300] GPSDO found
>>>>>>> [INFO] [E300] Initializing core control (global registers)...
>>>>>>>
>>>>>>> [INFO] [E300] Performing register loopback test...
>>>>>>> [INFO] [E300] Register loopback test passed
>>>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>>>>>> 0x12AD100000000000)
>>>>>>> [WARNING] [RFNOC] Can't find a block controller for key SplitStream=
,
>>>>>>> using default block controller!
>>>>>>> [INFO] [0/SplitStream_0] Initializing block control (NOC ID:
>>>>>>> 0x5757000000000000)
>>>>>>> [ERROR] [UHD] Exception caught in safe-call.
>>>>>>>   in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
>>>>>>> uhd::endianness_t _endianness =3D (uhd::endianness_t)1u]
>>>>>>>   at
>>>>>>> /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
>>>>>>> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block
>>>>>>> ctrl (CE_01_Port_21) no response packet - AssertionError: bool(buff=
)
>>>>>>>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool,
>>>>>>> double) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)=
1u;
>>>>>>> uint64_t =3D long long unsigned int]
>>>>>>>   at
>>>>>>> /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
>>>>>>>
>>>>>>> Traceback (most recent call last):
>>>>>>>   File "rfnoc_fosphor_network_usrp.py", line 283, in <module>
>>>>>>>     main()
>>>>>>>   File "rfnoc_fosphor_network_usrp.py", line 272, in main
>>>>>>>     tb =3D top_block_cls(fft_size=3Doptions.fft_size,
>>>>>>> fpga_path=3Doptions.fpga_path, freq=3Doptions.freq, gain=3Doptions.=
gain,
>>>>>>> host_ip_addr=3Doptions.host_ip_addr, samp_rate=3Doptions.samp_rate,
>>>>>>> tdecay=3Doptions.tdecay, trise=3Doptions.trise)
>>>>>>>   File "rfnoc_fosphor_network_usrp.py", line 43, in __init__
>>>>>>>     self.device3 =3D variable_uhd_device3_0 =3D
>>>>>>> ettus.device3(uhd.device_addr_t( ",".join(('type=3De3x0',
>>>>>>> "master_clock_rate=3D%d,fpga=3D%s" % (samp_rate,fpga_path))) ))
>>>>>>>   File
>>>>>>> "/home/root/localinstall/usr/lib/python2.7/site-packages/ettus/ettu=
s_swig.py",
>>>>>>> line 1307, in make
>>>>>>>     return _ettus_swig.device3_make(*args, **kwargs)
>>>>>>> RuntimeError: EnvironmentError: IOError: [0/SplitStream_0]
>>>>>>> sr_read64() failed: EnvironmentError: IOError: Block ctrl (CE_01_Po=
rt_21)
>>>>>>> no response packet - AssertionError: bool(buff)
>>>>>>>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool,
>>>>>>> double) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)=
1u;
>>>>>>> uint64_t =3D long long unsigned int]
>>>>>>>   at
>>>>>>> /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142
>>>>>>>
>>>>>>> This is only occurring when I use the split stream block in RFNoC. =
I
>>>>>>> have tried the fixes in [1] but unfortunately they have not helped.=
 Also,
>>>>>>> fix 1, I can't seem to before b/c I am missing the file
>>>>>>> rfnoc_ce_auto_inst_<device>.v  as shown from the output when
>>>>>>> attempting a "find" command in Ubuntu.
>>>>>>>
>>>>>>> find: =E2=80=98rfnoc_ce_auto_inst_e310.v=E2=80=99: No such file or =
directory
>>>>>>>
>>>>>>> I ran it on both ~/* and /* with no luck.
>>>>>>>
>>>>>>> Regards,
>>>>>>> Jon Lockhart
>>>>>>>
>>>>>>> [1]
>>>>>>> https://kb.ettus.com/RFNoC#Why_do_I_have_a_command_timeout_error.3F
>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list
>>>>>>> USRP-users@lists.ettus.com
>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>
>>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000e5166805973c4679
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings EJ,<div><br></div><div>Thanks for the info. I ha=
ven&#39;t had time to grab the new block as my dev box is packed for moving=
 this weekend. I will get it downloaded and try it as soon as I can.=C2=A0<=
/div><div><br></div><div>Regards,</div><div>Jon</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 9, 2019 =
at 9:48 AM EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gmail.com">ejkreinar@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto">Hi there,<div dir=3D"auto"><br></div><div dir=
=3D"auto">Just want to chime in since I recently went through the upgrade p=
rocess to UHD-3.14...</div><div dir=3D"auto"><br></div><div dir=3D"auto"><s=
pan style=3D"font-family:sans-serif">Can you confirm you&#39;re using uhd-3=
.14? If</span><span style=3D"font-family:sans-serif">=C2=A0so, this is actu=
ally a split stream fpga bug caused by the commit Jon referred to, not the =
&quot;not enough bandwidth&quot; problem.</span></div><div dir=3D"auto"><sp=
an style=3D"font-family:sans-serif"><br></span></div><div dir=3D"auto"><spa=
n style=3D"font-family:sans-serif">Fortunately, rather than referring the o=
ld commit, the bug seems to have been fixed in October on the master branch=
: https</span><font face=3D"sans-serif">://<a href=3D"http://github.com/Ett=
usResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203eb62ae26c9" target=3D"=
_blank">github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203=
eb62ae26c9</a> (but not yet ported onto 3.14)</font></div><div dir=3D"auto"=
><font face=3D"sans-serif"><br></font></div><div dir=3D"auto"><font face=3D=
"sans-serif">I just cherry-picked 1102779f onto my UHD-3.14 and it cleaned =
it up for me.</font></div><div dir=3D"auto"><font face=3D"sans-serif"><br><=
/font></div><div dir=3D"auto"><font face=3D"sans-serif">I assume this will =
eventually make it to the UHD-3.14 branch? But if not the cherry pick works=
 fine</font></div><div dir=3D"auto"><font face=3D"sans-serif"><br></font></=
div><div dir=3D"auto"><font face=3D"sans-serif">EJ</font></div><div dir=3D"=
auto"><font face=3D"sans-serif"><br></font></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 8, 2019, 2:43 =
PM Jonathan Lockhart via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">Jonathon,<div><br></div><div>I will give that a try and see=
 if it works.</div><div><br></div><div><br></div><div>Nick,</div><div><br><=
/div><div>If the revert on Split_Stream fails, I will try switching=C2=A0fr=
om ce_clk to bus_clk and give that a try.=C2=A0</div><div><br></div><div><b=
r></div><div>Regards,</div><div>Jon</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 8, 2019 at 1:52 PM Nic=
k Foster &lt;<a href=3D"mailto:bistromath@gmail.com" rel=3D"noreferrer nore=
ferrer" target=3D"_blank">bistromath@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Jonatho=
n (Pendlum), correct me if I&#39;m wrong, but I think this is the usual spl=
it-stream-demands-more-bandwidth-than-RFNoC-bus-allows problem.<br></div><d=
iv><br></div><div>Jonathan (Lockhart), if I&#39;m right, then in your rfnoc=
_ce_auto_inst_e310.v, if you change the ce_clk/ce_rst in the noc_block_spli=
t_stream instantiation to bus_clk/bus_rst, this may fix the problem.</div><=
div><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 8, 2019 at 10:20 AM Jonathon P=
endlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" rel=3D"noreferrer =
noreferrer" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=
 Jon,<div><br></div><div>Can you try reverting commit e39334fe on the fpga =
repo and rebuilding your bitstream? Let me know if that makes a difference =
or not.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 9, 2019 at 12:13=
 AM Jonathan Lockhart via USRP-users &lt;<a href=3D"mailto:usrp-users@lists=
.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Greetings Nick,</div><div><br></div><div>H=
ere is the screenshot of my GR flow graph, though it shouldn&#39;t matter a=
s the Split_Stream RFNoC Block I believe is a failure of the python or Veri=
log but the solutions in the link I sent in my previous email did not resol=
ve the issue. <br></div><div><br></div><div><div><img src=3D"https://mail.g=
oogle.com/mail/?ui=3D2&amp;ik=3D1ae818862e&amp;attid=3D0.1&amp;th=3D16e50a0=
101adc4f2&amp;view=3Dfimg&amp;rm=3D16e50a0101adc4f2&amp;sz=3Dw1600-h1000&am=
p;attbid=3DANGjdJ99ZIcYsSIzDc4CWbFXICEswBw_zKbYxEPrUUzifdVbwxV4DA5-2ZfQVUkI=
JkApVRObYcGTjPk7XNPRZOpXERJ0z1KQjoXiW9JBGPgI82fhvoAzlecorcyXTfU&amp;disp=3D=
emb&amp;realattid=3Dii_k2qa0bd70&amp;zw" alt=3D"Screenshot from 2019-11-08 =
10-06-50.png" width=3D"566" height=3D"243"><br></div></div><div><br></div><=
div>Regards,</div><div>Jon<br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 7, 2019 at 5:33 PM Nick Fos=
ter &lt;<a href=3D"mailto:bistromath@gmail.com" rel=3D"noreferrer noreferre=
r" target=3D"_blank">bistromath@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Can you be more s=
pecific about what your flowgraph looks like?<br></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 7, 2019 at 2:2=
2 PM Jonathan Lockhart via USRP-users &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>Greetings,</div><div><br></div><div>I was=
 wondering if anyone had encountered the following error and had a way to f=
ix it?</div><div><br></div><div>[INFO] [UHD] linux; GNU C++ version 4.9.2; =
Boost_105700; UHD_3.14.1.HEAD-0-g0347a6d8<br>[INFO] [E300] Loading FPGA ima=
ge: /home/root/localinstall/e300.bit...<br>[INFO] [E300] FPGA image loaded<=
br>[INFO] [E300] Detecting internal GPS <br>.... [INFO] [E300] GPSDO found<=
br>[INFO] [E300] Initializing core control (global registers)...<br><br>[IN=
FO] [E300] Performing register loopback test... <br>[INFO] [E300] Register =
loopback test passed<br>[INFO] [0/Radio_0] Initializing block control (NOC =
ID: 0x12AD100000000000)<br>[WARNING] [RFNOC] Can&#39;t find a block control=
ler for key SplitStream, using default block controller!<br>[INFO] [0/Split=
Stream_0] Initializing block control (NOC ID: 0x5757000000000000)<br>[ERROR=
] [UHD] Exception caught in safe-call.<br>=C2=A0 in ctrl_iface_impl&lt;_end=
ianness&gt;::~ctrl_iface_impl() [with uhd::endianness_t _endianness =3D (uh=
d::endianness_t)1u]<br>=C2=A0 at /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/=
rfnoc/ctrl_iface.cpp:52<br>this-&gt;send_cmd_pkt(0, 0, true); -&gt; Environ=
mentError: IOError: Block ctrl (CE_01_Port_21) no response packet - Asserti=
onError: bool(buff)<br>=C2=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt=
;::wait_for_ack(bool, double) [with uhd::endianness_t _endianness =3D (uhd:=
:endianness_t)1u; uint64_t =3D long long unsigned int]<br>=C2=A0 at /home/j=
on/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142<br><br>Tracebac=
k (most recent call last):<br>=C2=A0 File &quot;rfnoc_fosphor_network_usrp.=
py&quot;, line 283, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 Fil=
e &quot;rfnoc_fosphor_network_usrp.py&quot;, line 272, in main<br>=C2=A0 =
=C2=A0 tb =3D top_block_cls(fft_size=3Doptions.fft_size, fpga_path=3Doption=
s.fpga_path, freq=3Doptions.freq, gain=3Doptions.gain, host_ip_addr=3Doptio=
ns.host_ip_addr, samp_rate=3Doptions.samp_rate, tdecay=3Doptions.tdecay, tr=
ise=3Doptions.trise)<br>=C2=A0 File &quot;rfnoc_fosphor_network_usrp.py&quo=
t;, line 43, in __init__<br>=C2=A0 =C2=A0 self.device3 =3D variable_uhd_dev=
ice3_0 =3D ettus.device3(uhd.device_addr_t( &quot;,&quot;.join((&#39;type=
=3De3x0&#39;, &quot;master_clock_rate=3D%d,fpga=3D%s&quot; % (samp_rate,fpg=
a_path))) ))<br>=C2=A0 File &quot;/home/root/localinstall/usr/lib/python2.7=
/site-packages/ettus/ettus_swig.py&quot;, line 1307, in make<br>=C2=A0 =C2=
=A0 return _ettus_swig.device3_make(*args, **kwargs)<br>RuntimeError: Envir=
onmentError: IOError: [0/SplitStream_0] sr_read64() failed: EnvironmentErro=
r: IOError: Block ctrl (CE_01_Port_21) no response packet - AssertionError:=
 bool(buff)<br>=C2=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_=
for_ack(bool, double) [with uhd::endianness_t _endianness =3D (uhd::endiann=
ess_t)1u; uint64_t =3D long long unsigned int]<br>=C2=A0 at /home/jon/rfnoc=
_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142</div><div><br></div><di=
v>This is only occurring when I use the split stream block in RFNoC. I have=
 tried the fixes in [1] but unfortunately they have not helped. Also, fix 1=
, I can&#39;t seem to before b/c I am missing the file <code>rfnoc_ce_auto_=
inst_&lt;device&gt;.v</code>=C2=A0 as shown from the output when attempting=
 a &quot;find&quot; command in Ubuntu.=C2=A0</div><div><br></div><div>find:=
 =E2=80=98rfnoc_ce_auto_inst_e310.v=E2=80=99: No such file or directory</di=
v><div><br></div><div>I ran it on both ~/* and /* with no luck. <br></div><=
div><br></div><div>Regards,</div><div>Jon Lockhart</div><div><br></div><div=
>[1] <a href=3D"https://kb.ettus.com/RFNoC#Why_do_I_have_a_command_timeout_=
error.3F" rel=3D"noreferrer noreferrer" target=3D"_blank">https://kb.ettus.=
com/RFNoC#Why_do_I_have_a_command_timeout_error.3F</a></div><div><br></div>=
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000e5166805973c4679--


--===============1262092343088237408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1262092343088237408==--

