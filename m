Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AD1FD152
	for <lists+usrp-users@lfdr.de>; Fri, 15 Nov 2019 00:06:18 +0100 (CET)
Received: from [::1] (port=38022 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iVOBt-0005kO-Eg; Thu, 14 Nov 2019 18:06:17 -0500
Received: from mail-il1-f182.google.com ([209.85.166.182]:33064)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1iVOBo-0005Kq-Uk
 for usrp-users@lists.ettus.com; Thu, 14 Nov 2019 18:06:13 -0500
Received: by mail-il1-f182.google.com with SMTP id m5so7016310ilq.0
 for <usrp-users@lists.ettus.com>; Thu, 14 Nov 2019 15:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/UrGL+N29g2YiDVMi25eXRVh6p14JecXKls5huYX4C0=;
 b=HsosPmFQojJGyMI1CJ9Idgbo0l91/gGJz8PYMrdoxMvzDmgDYHLHNfFbeD7KLPoTW0
 ZbX9y2+Hqrl/cGqEDPkuQuC8u06BnePPwcglkwiWzo7jK0QZw7MBx56G5opa9UQ/v2N7
 9+pMpK96qkZWCEdjqIPqcCR3pwUmGLVEUlB+BRREfYhpxrKCaMGcGuS5ANaTRPkG9Yvm
 9UZ1Fx21R84ArrLYNSRlnryfAvwT0PnMCFhmH/yJwtF0rr8ZHFy5fEdVE8KATy+XjOVV
 nBrFZaZ6HvfNcqWexQ9lcaD4X4MS5jLOuWbKNaymcx4xKtBZNOdKmDNybD6TadbCf4js
 x2aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/UrGL+N29g2YiDVMi25eXRVh6p14JecXKls5huYX4C0=;
 b=O0w4ReGvFpK35fZ8ZrN4EbZXpFXR5vG2QBENhR0iLlUVUE+dBWtPFBaYqtZ0MPp2SR
 YUosMVu4HayewM0LN5sByOgBqVoLSUdHXGrzkXS4U1s00jWMvoQXxy3rHqGryXepXegU
 M8ozSYDti+1O5cO+oDepQCK/1c/SwPNsfwCe/5+x+rWsxb0CPQ6fhkogukY+PF5algwQ
 Voyl390Sy9VsrazN5li8vsDRDf7IVOtzzOmNChyzw4mV9TEMy4zltOJwK2NrJwFH7/xU
 Vb5Q+jur6p6mM8F/pauOTrpnuG/rkLqH3HfCcmPPyKv9wqJ0j2reICrOAku28hGBTXx2
 yg7Q==
X-Gm-Message-State: APjAAAWD7v7XOmGUEES6iU3nGXNvjp1d3BQO+/HO92NqkwQo4uuIuqIZ
 QDn6rjmxFIKLeieHAGsl8/JHwFv75t2MJtzwLWjfdg==
X-Google-Smtp-Source: APXvYqy0qwqQA8Bg0+02O315jfbFJDpFZj5ru28s14Ep5C1la/dN2Q7qzVobO0llucpfXdTIi9oMTv3PAwiJ0bZA+TA=
X-Received: by 2002:a92:d7c6:: with SMTP id g6mr12124433ilq.298.1573772732100; 
 Thu, 14 Nov 2019 15:05:32 -0800 (PST)
MIME-Version: 1.0
References: <CALY+5sK3V1J+r2Vrf1gw=-Ok=L9OoAks-oqkBPFqtcnRusLomw@mail.gmail.com>
 <CA+JMMq9wAx+ML3=AsrSjyi+-E0gQrub0UnV8BC_wS7+ypANkFg@mail.gmail.com>
 <CALY+5sK3M_Jb0aAv9QWoC+kHfn=8UPpWo1i94_oWXxy0JjU13g@mail.gmail.com>
 <CAL7q81uDv2=rZSe0vmx+AzN1AE8uPgYDF1NNt_2aYeE9KiXSHg@mail.gmail.com>
 <CA+JMMq9McBUDdfMotYf7cPMdmgLcdEPiTotW=sVOYv+QFrf9UQ@mail.gmail.com>
 <CALY+5sJ_co9mAFUsXyi647W3DW18wc4Ruc+9UaUpppFxt1r29Q@mail.gmail.com>
 <CADRnH21gzFR3-aQSet4tS1fks5Rdp2qjSH_p8JerhY+AL=YTaw@mail.gmail.com>
 <CALY+5s+UO+SUdKjdyb-H6t40q54reOD-n396DoUh_U_Bk9-+yQ@mail.gmail.com>
 <CALY+5sLH3EbXH3eiCYht99y8TVcNmbO=UMkuoTdn-6n8=6-UQg@mail.gmail.com>
 <CA+JMMq8Ubw2TiUc-pPBRGVF6DLrLRvjohpJTw4BR+fqn24Zb4g@mail.gmail.com>
In-Reply-To: <CA+JMMq8Ubw2TiUc-pPBRGVF6DLrLRvjohpJTw4BR+fqn24Zb4g@mail.gmail.com>
Date: Thu, 14 Nov 2019 15:04:59 -0800
Message-ID: <CA+JMMq-7eRAbDsp7A6Kh9dQEKfMsQPyUyrnHmSgpnBxpSCueig@mail.gmail.com>
To: Jonathan Lockhart <jlockhartrt@gmail.com>
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5277987511971252673=="
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

--===============5277987511971252673==
Content-Type: multipart/alternative; boundary="000000000000a776d805975684c1"

--000000000000a776d805975684c1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I also haven't tested to see if this is a gr-ettus limitation or a UHD
limitation.

On Thu, Nov 14, 2019 at 3:04 PM Nick Foster <bistromath@gmail.com> wrote:

> You can't have heterogenous output destinations on RFNoC blocks -- i.e.,
> you can't send one output to the host and one output to another RFNoC blo=
ck.
>
> I'm not sure why this limitation exists as there is no architectural
> reason I can see.
>
> Nick
>
> On Thu, Nov 14, 2019 at 12:35 PM Jonathan Lockhart <jlockhartrt@gmail.com=
>
> wrote:
>
>> Greetings EJ,
>>
>> So went and dug out the E312 b/c I couldn't wait and unfortunately that
>> didn't resolve the issue I was experiencing. I cherry picked the new
>> split_stream block, I am using the same flow graph as provided before, b=
ut
>> when it goes to run on the E312 I get the following error.
>>
>> Traceback (most recent call last):
>>   File "rfnoc_fosphor_radio_network_usrp.py", line 281, in <module>
>>     main()
>>   File "rfnoc_fosphor_radio_network_usrp.py", line 271, in main
>>     tb.start()
>>   File
>> "/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr/top=
_block.py",
>> line 109, in start
>>     top_block_start_unlocked(self._impl, max_noutput_items)
>>   File
>> "/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr/run=
time_swig.py",
>> line 3671, in top_block_start_unlocked
>>     return _runtime_swig.top_block_start_unlocked(*args, **kwargs)
>> RuntimeError: uhd_rfnoc_SplitStream(9): missing connection from output
>> port 0
>>
>> Looks like something is missing from the split stream. I assume it needs
>> to be fixed in the verilog.
>>
>> I attached a screenshot of the new, cleaned up GNU radio file. I had to
>> remove a FIFO and switch to using a throttle b/c I wasn't able to get it
>> all to fit in the bit file.
>>
>> Regards,
>> Jon
>>
>> On Wed, Nov 13, 2019 at 10:46 AM Jonathan Lockhart <jlockhartrt@gmail.co=
m>
>> wrote:
>>
>>> Greetings EJ,
>>>
>>> Thanks for the info. I haven't had time to grab the new block as my dev
>>> box is packed for moving this weekend. I will get it downloaded and try=
 it
>>> as soon as I can.
>>>
>>> Regards,
>>> Jon
>>>
>>> On Sat, Nov 9, 2019 at 9:48 AM EJ Kreinar <ejkreinar@gmail.com> wrote:
>>>
>>>> Hi there,
>>>>
>>>> Just want to chime in since I recently went through the upgrade proces=
s
>>>> to UHD-3.14...
>>>>
>>>> Can you confirm you're using uhd-3.14? If so, this is actually a split
>>>> stream fpga bug caused by the commit Jon referred to, not the "not eno=
ugh
>>>> bandwidth" problem.
>>>>
>>>> Fortunately, rather than referring the old commit, the bug seems to
>>>> have been fixed in October on the master branch: https://
>>>> github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203eb6=
2ae26c9
>>>> (but not yet ported onto 3.14)
>>>>
>>>> I just cherry-picked 1102779f onto my UHD-3.14 and it cleaned it up fo=
r
>>>> me.
>>>>
>>>> I assume this will eventually make it to the UHD-3.14 branch? But if
>>>> not the cherry pick works fine
>>>>
>>>> EJ
>>>>
>>>>
>>>> On Fri, Nov 8, 2019, 2:43 PM Jonathan Lockhart via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Jonathon,
>>>>>
>>>>> I will give that a try and see if it works.
>>>>>
>>>>>
>>>>> Nick,
>>>>>
>>>>> If the revert on Split_Stream fails, I will try switching from ce_clk
>>>>> to bus_clk and give that a try.
>>>>>
>>>>>
>>>>> Regards,
>>>>> Jon
>>>>>
>>>>> On Fri, Nov 8, 2019 at 1:52 PM Nick Foster <bistromath@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> Jonathon (Pendlum), correct me if I'm wrong, but I think this is the
>>>>>> usual split-stream-demands-more-bandwidth-than-RFNoC-bus-allows prob=
lem.
>>>>>>
>>>>>> Jonathan (Lockhart), if I'm right, then in your
>>>>>> rfnoc_ce_auto_inst_e310.v, if you change the ce_clk/ce_rst in the
>>>>>> noc_block_split_stream instantiation to bus_clk/bus_rst, this may fi=
x the
>>>>>> problem.
>>>>>>
>>>>>> Nick
>>>>>>
>>>>>> On Fri, Nov 8, 2019 at 10:20 AM Jonathon Pendlum <
>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>
>>>>>>> Hi Jon,
>>>>>>>
>>>>>>> Can you try reverting commit e39334fe on the fpga repo and
>>>>>>> rebuilding your bitstream? Let me know if that makes a difference o=
r not.
>>>>>>>
>>>>>>> Jonathon
>>>>>>>
>>>>>>> On Sat, Nov 9, 2019 at 12:13 AM Jonathan Lockhart via USRP-users <
>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>
>>>>>>>> Greetings Nick,
>>>>>>>>
>>>>>>>> Here is the screenshot of my GR flow graph, though it shouldn't
>>>>>>>> matter as the Split_Stream RFNoC Block I believe is a failure of t=
he python
>>>>>>>> or Verilog but the solutions in the link I sent in my previous ema=
il did
>>>>>>>> not resolve the issue.
>>>>>>>>
>>>>>>>> [image: Screenshot from 2019-11-08 10-06-50.png]
>>>>>>>>
>>>>>>>> Regards,
>>>>>>>> Jon
>>>>>>>>
>>>>>>>> On Thu, Nov 7, 2019 at 5:33 PM Nick Foster <bistromath@gmail.com>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> Can you be more specific about what your flowgraph looks like?
>>>>>>>>>
>>>>>>>>> On Thu, Nov 7, 2019 at 2:22 PM Jonathan Lockhart via USRP-users <
>>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>>
>>>>>>>>>> Greetings,
>>>>>>>>>>
>>>>>>>>>> I was wondering if anyone had encountered the following error an=
d
>>>>>>>>>> had a way to fix it?
>>>>>>>>>>
>>>>>>>>>> [INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
>>>>>>>>>> UHD_3.14.1.HEAD-0-g0347a6d8
>>>>>>>>>> [INFO] [E300] Loading FPGA image:
>>>>>>>>>> /home/root/localinstall/e300.bit...
>>>>>>>>>> [INFO] [E300] FPGA image loaded
>>>>>>>>>> [INFO] [E300] Detecting internal GPS
>>>>>>>>>> .... [INFO] [E300] GPSDO found
>>>>>>>>>> [INFO] [E300] Initializing core control (global registers)...
>>>>>>>>>>
>>>>>>>>>> [INFO] [E300] Performing register loopback test...
>>>>>>>>>> [INFO] [E300] Register loopback test passed
>>>>>>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>>>>>>>>> 0x12AD100000000000)
>>>>>>>>>> [WARNING] [RFNOC] Can't find a block controller for key
>>>>>>>>>> SplitStream, using default block controller!
>>>>>>>>>> [INFO] [0/SplitStream_0] Initializing block control (NOC ID:
>>>>>>>>>> 0x5757000000000000)
>>>>>>>>>> [ERROR] [UHD] Exception caught in safe-call.
>>>>>>>>>>   in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
>>>>>>>>>> uhd::endianness_t _endianness =3D (uhd::endianness_t)1u]
>>>>>>>>>>   at
>>>>>>>>>> /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:5=
2
>>>>>>>>>> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError:
>>>>>>>>>> Block ctrl (CE_01_Port_21) no response packet - AssertionError: =
bool(buff)
>>>>>>>>>>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool,
>>>>>>>>>> double) [with uhd::endianness_t _endianness =3D (uhd::endianness=
_t)1u;
>>>>>>>>>> uint64_t =3D long long unsigned int]
>>>>>>>>>>   at
>>>>>>>>>> /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:1=
42
>>>>>>>>>>
>>>>>>>>>> Traceback (most recent call last):
>>>>>>>>>>   File "rfnoc_fosphor_network_usrp.py", line 283, in <module>
>>>>>>>>>>     main()
>>>>>>>>>>   File "rfnoc_fosphor_network_usrp.py", line 272, in main
>>>>>>>>>>     tb =3D top_block_cls(fft_size=3Doptions.fft_size,
>>>>>>>>>> fpga_path=3Doptions.fpga_path, freq=3Doptions.freq, gain=3Doptio=
ns.gain,
>>>>>>>>>> host_ip_addr=3Doptions.host_ip_addr, samp_rate=3Doptions.samp_ra=
te,
>>>>>>>>>> tdecay=3Doptions.tdecay, trise=3Doptions.trise)
>>>>>>>>>>   File "rfnoc_fosphor_network_usrp.py", line 43, in __init__
>>>>>>>>>>     self.device3 =3D variable_uhd_device3_0 =3D
>>>>>>>>>> ettus.device3(uhd.device_addr_t( ",".join(('type=3De3x0',
>>>>>>>>>> "master_clock_rate=3D%d,fpga=3D%s" % (samp_rate,fpga_path))) ))
>>>>>>>>>>   File
>>>>>>>>>> "/home/root/localinstall/usr/lib/python2.7/site-packages/ettus/e=
ttus_swig.py",
>>>>>>>>>> line 1307, in make
>>>>>>>>>>     return _ettus_swig.device3_make(*args, **kwargs)
>>>>>>>>>> RuntimeError: EnvironmentError: IOError: [0/SplitStream_0]
>>>>>>>>>> sr_read64() failed: EnvironmentError: IOError: Block ctrl (CE_01=
_Port_21)
>>>>>>>>>> no response packet - AssertionError: bool(buff)
>>>>>>>>>>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool,
>>>>>>>>>> double) [with uhd::endianness_t _endianness =3D (uhd::endianness=
_t)1u;
>>>>>>>>>> uint64_t =3D long long unsigned int]
>>>>>>>>>>   at
>>>>>>>>>> /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:1=
42
>>>>>>>>>>
>>>>>>>>>> This is only occurring when I use the split stream block in
>>>>>>>>>> RFNoC. I have tried the fixes in [1] but unfortunately they have=
 not
>>>>>>>>>> helped. Also, fix 1, I can't seem to before b/c I am missing the=
 file
>>>>>>>>>> rfnoc_ce_auto_inst_<device>.v  as shown from the output when
>>>>>>>>>> attempting a "find" command in Ubuntu.
>>>>>>>>>>
>>>>>>>>>> find: =E2=80=98rfnoc_ce_auto_inst_e310.v=E2=80=99: No such file =
or directory
>>>>>>>>>>
>>>>>>>>>> I ran it on both ~/* and /* with no luck.
>>>>>>>>>>
>>>>>>>>>> Regards,
>>>>>>>>>> Jon Lockhart
>>>>>>>>>>
>>>>>>>>>> [1]
>>>>>>>>>> https://kb.ettus.com/RFNoC#Why_do_I_have_a_command_timeout_error=
.3F
>>>>>>>>>>
>>>>>>>>>> _______________________________________________
>>>>>>>>>> USRP-users mailing list
>>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om
>>>>>>>>>>
>>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list
>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>>
>>>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>

--000000000000a776d805975684c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I also haven&#39;t tested to see if this is a gr-ettus lim=
itation or a UHD limitation.<br></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 14, 2019 at 3:04 PM Nick Foster=
 &lt;<a href=3D"mailto:bistromath@gmail.com">bistromath@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>You can&#39;t have heterogenous output destinations on RFNoC =
blocks -- i.e., you can&#39;t send one output to the host and one output to=
 another RFNoC block.</div><div><br></div><div>I&#39;m not sure why this li=
mitation exists as there is no architectural reason I can see.<br></div><di=
v><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, Nov 14, 2019 at 12:35 PM Jonathan Lo=
ckhart &lt;<a href=3D"mailto:jlockhartrt@gmail.com" target=3D"_blank">jlock=
hartrt@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div>Greetings EJ,</div><div><br></div><di=
v>So went and dug out the E312 b/c I couldn&#39;t wait and unfortunately th=
at didn&#39;t resolve the issue I was experiencing. I cherry picked the new=
 split_stream block, I am using the same flow graph as provided before, but=
 when it goes to run on the E312 I get the following error. <br></div><div>=
<br></div><div>Traceback (most recent call last):<br>=C2=A0 File &quot;rfno=
c_fosphor_radio_network_usrp.py&quot;, line 281, in &lt;module&gt;<br>=C2=
=A0 =C2=A0 main()<br>=C2=A0 File &quot;rfnoc_fosphor_radio_network_usrp.py&=
quot;, line 271, in main<br>=C2=A0 =C2=A0 tb.start()<br>=C2=A0 File &quot;/=
home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr/top_bloc=
k.py&quot;, line 109, in start<br>=C2=A0 =C2=A0 top_block_start_unlocked(se=
lf._impl, max_noutput_items)<br>=C2=A0 File &quot;/home/root/localinstall/u=
sr/lib/python2.7/site-packages/gnuradio/gr/runtime_swig.py&quot;, line 3671=
, in top_block_start_unlocked<br>=C2=A0 =C2=A0 return _runtime_swig.top_blo=
ck_start_unlocked(*args, **kwargs)<br>RuntimeError: uhd_rfnoc_SplitStream(9=
): missing connection from output port 0</div><div><br></div><div>Looks lik=
e something is missing from the split stream. I assume it needs to be fixed=
 in the verilog. <br></div><div><br></div><div>I attached a screenshot of t=
he new, cleaned up GNU radio file. I had to remove a FIFO and switch to usi=
ng a throttle b/c I wasn&#39;t able to get it all to fit in the bit file. <=
br></div><div><br></div><div>Regards,</div><div>Jon<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 13=
, 2019 at 10:46 AM Jonathan Lockhart &lt;<a href=3D"mailto:jlockhartrt@gmai=
l.com" target=3D"_blank">jlockhartrt@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Greetings EJ=
,<div><br></div><div>Thanks for the info. I haven&#39;t had time to grab th=
e new block as my dev box is packed for moving this weekend. I will get it =
downloaded and try it as soon as I can.=C2=A0</div><div><br></div><div>Rega=
rds,</div><div>Jon</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Sat, Nov 9, 2019 at 9:48 AM EJ Kreinar &lt;<a hr=
ef=3D"mailto:ejkreinar@gmail.com" target=3D"_blank">ejkreinar@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"auto">Hi there,<div dir=3D"auto"><br></div><div dir=3D"auto">Just w=
ant to chime in since I recently went through the upgrade process to UHD-3.=
14...</div><div dir=3D"auto"><br></div><div dir=3D"auto"><span style=3D"fon=
t-family:sans-serif">Can you confirm you&#39;re using uhd-3.14? If</span><s=
pan style=3D"font-family:sans-serif">=C2=A0so, this is actually a split str=
eam fpga bug caused by the commit Jon referred to, not the &quot;not enough=
 bandwidth&quot; problem.</span></div><div dir=3D"auto"><span style=3D"font=
-family:sans-serif"><br></span></div><div dir=3D"auto"><span style=3D"font-=
family:sans-serif">Fortunately, rather than referring the old commit, the b=
ug seems to have been fixed in October on the master branch: https</span><f=
ont face=3D"sans-serif">://<a href=3D"http://github.com/EttusResearch/fpga/=
commit/1102779f49d44c9e8b88ce7251d203eb62ae26c9" target=3D"_blank">github.c=
om/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203eb62ae26c9</a> (=
but not yet ported onto 3.14)</font></div><div dir=3D"auto"><font face=3D"s=
ans-serif"><br></font></div><div dir=3D"auto"><font face=3D"sans-serif">I j=
ust cherry-picked 1102779f onto my UHD-3.14 and it cleaned it up for me.</f=
ont></div><div dir=3D"auto"><font face=3D"sans-serif"><br></font></div><div=
 dir=3D"auto"><font face=3D"sans-serif">I assume this will eventually make =
it to the UHD-3.14 branch? But if not the cherry pick works fine</font></di=
v><div dir=3D"auto"><font face=3D"sans-serif"><br></font></div><div dir=3D"=
auto"><font face=3D"sans-serif">EJ</font></div><div dir=3D"auto"><font face=
=3D"sans-serif"><br></font></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 8, 2019, 2:43 PM Jonathan Lock=
hart via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=
=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">Jonathon,<div><br></div><div>I will give that a try and see if it works.<=
/div><div><br></div><div><br></div><div>Nick,</div><div><br></div><div>If t=
he revert on Split_Stream fails, I will try switching=C2=A0from ce_clk to b=
us_clk and give that a try.=C2=A0</div><div><br></div><div><br></div><div>R=
egards,</div><div>Jon</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, Nov 8, 2019 at 1:52 PM Nick Foster &lt;<=
a href=3D"mailto:bistromath@gmail.com" rel=3D"noreferrer noreferrer" target=
=3D"_blank">bistromath@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Jonathon (Pendlum), =
correct me if I&#39;m wrong, but I think this is the usual split-stream-dem=
ands-more-bandwidth-than-RFNoC-bus-allows problem.<br></div><div><br></div>=
<div>Jonathan (Lockhart), if I&#39;m right, then in your rfnoc_ce_auto_inst=
_e310.v, if you change the ce_clk/ce_rst in the noc_block_split_stream inst=
antiation to bus_clk/bus_rst, this may fix the problem.</div><div><br></div=
><div>Nick<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, Nov 8, 2019 at 10:20 AM Jonathon Pendlum &lt;<a=
 href=3D"mailto:jonathon.pendlum@ettus.com" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Jon,<div><br=
></div><div>Can you try reverting commit e39334fe on the fpga repo and rebu=
ilding your bitstream? Let me know if that makes a difference or not.</div>=
<div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 9, 2019 at 12:13 AM Jonathan =
Lockhart via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" r=
el=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div>Greetings Nick,</div><div><br></div><div>Here is the sc=
reenshot of my GR flow graph, though it shouldn&#39;t matter as the Split_S=
tream RFNoC Block I believe is a failure of the python or Verilog but the s=
olutions in the link I sent in my previous email did not resolve the issue.=
 <br></div><div><br></div><div><div><img src=3D"https://mail.google.com/mai=
l/?ui=3D2&amp;ik=3D1ae818862e&amp;attid=3D0.1&amp;th=3D16e50a0101adc4f2&amp=
;view=3Dfimg&amp;rm=3D16e50a0101adc4f2&amp;sz=3Dw1600-h1000&amp;attbid=3DAN=
GjdJ99ZIcYsSIzDc4CWbFXICEswBw_zKbYxEPrUUzifdVbwxV4DA5-2ZfQVUkIJkApVRObYcGTj=
Pk7XNPRZOpXERJ0z1KQjoXiW9JBGPgI82fhvoAzlecorcyXTfU&amp;disp=3Demb&amp;reala=
ttid=3Dii_k2qa0bd70&amp;zw" alt=3D"Screenshot from 2019-11-08 10-06-50.png"=
 width=3D"566" height=3D"243"><br></div></div><div><br></div><div>Regards,<=
/div><div>Jon<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Thu, Nov 7, 2019 at 5:33 PM Nick Foster &lt;<a hr=
ef=3D"mailto:bistromath@gmail.com" rel=3D"noreferrer noreferrer" target=3D"=
_blank">bistromath@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">Can you be more specific about=
 what your flowgraph looks like?<br></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 7, 2019 at 2:22 PM Jonathan=
 Lockhart via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div>Greetings,</div><div><br></div><div>I was wondering if=
 anyone had encountered the following error and had a way to fix it?</div><=
div><br></div><div>[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;=
 UHD_3.14.1.HEAD-0-g0347a6d8<br>[INFO] [E300] Loading FPGA image: /home/roo=
t/localinstall/e300.bit...<br>[INFO] [E300] FPGA image loaded<br>[INFO] [E3=
00] Detecting internal GPS <br>.... [INFO] [E300] GPSDO found<br>[INFO] [E3=
00] Initializing core control (global registers)...<br><br>[INFO] [E300] Pe=
rforming register loopback test... <br>[INFO] [E300] Register loopback test=
 passed<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100=
000000000)<br>[WARNING] [RFNOC] Can&#39;t find a block controller for key S=
plitStream, using default block controller!<br>[INFO] [0/SplitStream_0] Ini=
tializing block control (NOC ID: 0x5757000000000000)<br>[ERROR] [UHD] Excep=
tion caught in safe-call.<br>=C2=A0 in ctrl_iface_impl&lt;_endianness&gt;::=
~ctrl_iface_impl() [with uhd::endianness_t _endianness =3D (uhd::endianness=
_t)1u]<br>=C2=A0 at /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_if=
ace.cpp:52<br>this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IO=
Error: Block ctrl (CE_01_Port_21) no response packet - AssertionError: bool=
(buff)<br>=C2=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_a=
ck(bool, double) [with uhd::endianness_t _endianness =3D (uhd::endianness_t=
)1u; uint64_t =3D long long unsigned int]<br>=C2=A0 at /home/jon/rfnoc_3.14=
.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:142<br><br>Traceback (most recen=
t call last):<br>=C2=A0 File &quot;rfnoc_fosphor_network_usrp.py&quot;, lin=
e 283, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;rfnoc=
_fosphor_network_usrp.py&quot;, line 272, in main<br>=C2=A0 =C2=A0 tb =3D t=
op_block_cls(fft_size=3Doptions.fft_size, fpga_path=3Doptions.fpga_path, fr=
eq=3Doptions.freq, gain=3Doptions.gain, host_ip_addr=3Doptions.host_ip_addr=
, samp_rate=3Doptions.samp_rate, tdecay=3Doptions.tdecay, trise=3Doptions.t=
rise)<br>=C2=A0 File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 43, in=
 __init__<br>=C2=A0 =C2=A0 self.device3 =3D variable_uhd_device3_0 =3D ettu=
s.device3(uhd.device_addr_t( &quot;,&quot;.join((&#39;type=3De3x0&#39;, &qu=
ot;master_clock_rate=3D%d,fpga=3D%s&quot; % (samp_rate,fpga_path))) ))<br>=
=C2=A0 File &quot;/home/root/localinstall/usr/lib/python2.7/site-packages/e=
ttus/ettus_swig.py&quot;, line 1307, in make<br>=C2=A0 =C2=A0 return _ettus=
_swig.device3_make(*args, **kwargs)<br>RuntimeError: EnvironmentError: IOEr=
ror: [0/SplitStream_0] sr_read64() failed: EnvironmentError: IOError: Block=
 ctrl (CE_01_Port_21) no response packet - AssertionError: bool(buff)<br>=
=C2=A0 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, d=
ouble) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)1u; uint6=
4_t =3D long long unsigned int]<br>=C2=A0 at /home/jon/rfnoc_3.14.1.1/src/u=
hd/host/lib/rfnoc/ctrl_iface.cpp:142</div><div><br></div><div>This is only =
occurring when I use the split stream block in RFNoC. I have tried the fixe=
s in [1] but unfortunately they have not helped. Also, fix 1, I can&#39;t s=
eem to before b/c I am missing the file <code>rfnoc_ce_auto_inst_&lt;device=
&gt;.v</code>=C2=A0 as shown from the output when attempting a &quot;find&q=
uot; command in Ubuntu.=C2=A0</div><div><br></div><div>find: =E2=80=98rfnoc=
_ce_auto_inst_e310.v=E2=80=99: No such file or directory</div><div><br></di=
v><div>I ran it on both ~/* and /* with no luck. <br></div><div><br></div><=
div>Regards,</div><div>Jon Lockhart</div><div><br></div><div>[1] <a href=3D=
"https://kb.ettus.com/RFNoC#Why_do_I_have_a_command_timeout_error.3F" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://kb.ettus.com/RFNoC#Why=
_do_I_have_a_command_timeout_error.3F</a></div><div><br></div></div>
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
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000a776d805975684c1--


--===============5277987511971252673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5277987511971252673==--

