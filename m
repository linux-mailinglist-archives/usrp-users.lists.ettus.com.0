Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDDA104506
	for <lists+usrp-users@lfdr.de>; Wed, 20 Nov 2019 21:27:45 +0100 (CET)
Received: from [::1] (port=47396 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iXWZk-0004VT-Hm; Wed, 20 Nov 2019 15:27:44 -0500
Received: from mail-lj1-f171.google.com ([209.85.208.171]:36388)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jlockhartrt@gmail.com>)
 id 1iXWZg-0004NT-U2
 for usrp-users@lists.ettus.com; Wed, 20 Nov 2019 15:27:41 -0500
Received: by mail-lj1-f171.google.com with SMTP id k15so620787lja.3
 for <usrp-users@lists.ettus.com>; Wed, 20 Nov 2019 12:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4ob2ydxTucvBl0fers6OuYeD1huKzrWjkqRU6+wkEy0=;
 b=PkriyCrCkALTTTWdJV1uzXO//GOOeJmkhWnLvPlDgfRszUahOrfochAxFBq+32vcRq
 lPpruIIhThUuCOHWm2xFmJAM46PTktlrhiRTpMaYw5ZK4LObNLGW9ZZyyY1Ga0Oig5eM
 A17JKR2TBgd5QDPu6kwx0JMtBqWRD4EumdCoLVIeVVFcHWuY/4pVBKi8BMCoGtSO80Gd
 qdYvB/YHEOK/iE2MJhZr1k/KPcPT1SDnstu6BJS0f0ZONoJGb9WrBoT/0fGiXjJYQ3P2
 ZdkXNT1SxiKMG7QGTduAxnzi7URdw/btQo4e3PDxnhbNg/Rkv0PCDZ/1XOcuhwjsgFGN
 55aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4ob2ydxTucvBl0fers6OuYeD1huKzrWjkqRU6+wkEy0=;
 b=X3ipDN0g3XoFjil9VfqIbznTHJwGwlruNbbacOP9wIJuh/vjVqowyhH5y5HKAkiAED
 bgR8oDzC2idWlgDfZVDaVgj1ye6i+qKsIsNDb5Owm9vKT1/3Inetl+sYAXzbjfA070S+
 BbYuET/BJMPO1TAhbr+wbLjJ3F7Q7FZbCysnQaMGhs2kB0ndlGjH6KnR2l34JIpO+fGq
 4j0CwlxZR8vdpCVo6hyZPOMI1+OE7+YlTJk7NZfZUmx7RgkqE1FlgluWdo0jJxErp7JC
 RmUcC7DMKmTuXo1w4IracboYcImfVrnaPVhMEO0aSrpo6ZpIWLOsPuyA/guXisodt3S+
 4ncA==
X-Gm-Message-State: APjAAAVEp5salQ+0OApolCFk0bbtfCbLKtbQuZsAZuQLhkxb4G+BfDlc
 sG90AR6QcN77XszvRsZizI8tebedC8GFzGUnaIhzTQ==
X-Google-Smtp-Source: APXvYqxDiip0fuJhpy54D+Eq7lVG35VFH4z7wc9ojZZtn6wx2m3CldF11S0x2/a+U/JCosvWWxABJqA1VUvUPC2+of4=
X-Received: by 2002:a05:651c:303:: with SMTP id
 a3mr4194163ljp.55.1574281619585; 
 Wed, 20 Nov 2019 12:26:59 -0800 (PST)
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
 <CA+JMMq-7eRAbDsp7A6Kh9dQEKfMsQPyUyrnHmSgpnBxpSCueig@mail.gmail.com>
 <CADRnH22pBed-g4_g407i_Kp-O2p=Sb2LU5GJj-tXA93z5ibDLg@mail.gmail.com>
In-Reply-To: <CADRnH22pBed-g4_g407i_Kp-O2p=Sb2LU5GJj-tXA93z5ibDLg@mail.gmail.com>
Date: Wed, 20 Nov 2019 15:24:18 -0500
Message-ID: <CALY+5sKthFSjSBKJX0_YkRyJBxxT1-sZ_LBGMBuNieV5Zrx_sw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7075276596357294484=="
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

--===============7075276596357294484==
Content-Type: multipart/alternative; boundary="000000000000b63f3d0597cd0028"

--000000000000b63f3d0597cd0028
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Greetings Nick and EJ,

Yes you are correct, the split stream does require a FIFO after the output
if I want to port to the arm or ZMQ. That resolved the run error.

EJ,

Currently I am just modifying the default installation example that comes
with UHD for the fosphor GNR files, and by default Ettus has it set to 56
MHz, which does appear to be a valid sample rate for the E312 SG3. I
haven't seen any odd behavior with the default example, albeit I am still
playing with the split stream so I may run into issues still.


Regards,
Jon

On Thu, Nov 14, 2019 at 6:11 PM EJ Kreinar <ejkreinar@gmail.com> wrote:

> Cool!
>
> I'll point out that your new build actually got past the old failure poin=
t
> you noted before, which was immediately after attempting to interact with
> the SplitStream RFNOC block!
>
> ```
> [INFO] [0/SplitStream_0] Initializing block control (NOC ID:
> 0x5757000000000000)
> [ERROR] [UHD] Exception caught in safe-call.
> [...etc...]
> ```
>
> I second Nick's thought. Try adding a FIFO after the second split-stream
> port.
>
> Though on further inspection, I actually doubt this particular applicatio=
n
> would work at all, since it looks like you're trying to push 56 MHz
> through the RFNoC FPGA->ARM transport and then through ZMQ. The E310
> definitely cannot handle that sort of load, and you might get undefined
> behavior in RFNOC fosphor because the underflow will propagate back to th=
e
> RFNoC Radio and momentarily stop the RF stream before restarting...
>
> EJ
>
> On Thu, Nov 14, 2019 at 6:05 PM Nick Foster <bistromath@gmail.com> wrote:
>
>> I also haven't tested to see if this is a gr-ettus limitation or a UHD
>> limitation.
>>
>> On Thu, Nov 14, 2019 at 3:04 PM Nick Foster <bistromath@gmail.com> wrote=
:
>>
>>> You can't have heterogenous output destinations on RFNoC blocks -- i.e.=
,
>>> you can't send one output to the host and one output to another RFNoC b=
lock.
>>>
>>> I'm not sure why this limitation exists as there is no architectural
>>> reason I can see.
>>>
>>> Nick
>>>
>>> On Thu, Nov 14, 2019 at 12:35 PM Jonathan Lockhart <
>>> jlockhartrt@gmail.com> wrote:
>>>
>>>> Greetings EJ,
>>>>
>>>> So went and dug out the E312 b/c I couldn't wait and unfortunately tha=
t
>>>> didn't resolve the issue I was experiencing. I cherry picked the new
>>>> split_stream block, I am using the same flow graph as provided before,=
 but
>>>> when it goes to run on the E312 I get the following error.
>>>>
>>>> Traceback (most recent call last):
>>>>   File "rfnoc_fosphor_radio_network_usrp.py", line 281, in <module>
>>>>     main()
>>>>   File "rfnoc_fosphor_radio_network_usrp.py", line 271, in main
>>>>     tb.start()
>>>>   File
>>>> "/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr/t=
op_block.py",
>>>> line 109, in start
>>>>     top_block_start_unlocked(self._impl, max_noutput_items)
>>>>   File
>>>> "/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr/r=
untime_swig.py",
>>>> line 3671, in top_block_start_unlocked
>>>>     return _runtime_swig.top_block_start_unlocked(*args, **kwargs)
>>>> RuntimeError: uhd_rfnoc_SplitStream(9): missing connection from output
>>>> port 0
>>>>
>>>> Looks like something is missing from the split stream. I assume it
>>>> needs to be fixed in the verilog.
>>>>
>>>> I attached a screenshot of the new, cleaned up GNU radio file. I had t=
o
>>>> remove a FIFO and switch to using a throttle b/c I wasn't able to get =
it
>>>> all to fit in the bit file.
>>>>
>>>> Regards,
>>>> Jon
>>>>
>>>> On Wed, Nov 13, 2019 at 10:46 AM Jonathan Lockhart <
>>>> jlockhartrt@gmail.com> wrote:
>>>>
>>>>> Greetings EJ,
>>>>>
>>>>> Thanks for the info. I haven't had time to grab the new block as my
>>>>> dev box is packed for moving this weekend. I will get it downloaded a=
nd try
>>>>> it as soon as I can.
>>>>>
>>>>> Regards,
>>>>> Jon
>>>>>
>>>>> On Sat, Nov 9, 2019 at 9:48 AM EJ Kreinar <ejkreinar@gmail.com> wrote=
:
>>>>>
>>>>>> Hi there,
>>>>>>
>>>>>> Just want to chime in since I recently went through the upgrade
>>>>>> process to UHD-3.14...
>>>>>>
>>>>>> Can you confirm you're using uhd-3.14? If so, this is actually a
>>>>>> split stream fpga bug caused by the commit Jon referred to, not the =
"not
>>>>>> enough bandwidth" problem.
>>>>>>
>>>>>> Fortunately, rather than referring the old commit, the bug seems to
>>>>>> have been fixed in October on the master branch: https://
>>>>>> github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203e=
b62ae26c9
>>>>>> (but not yet ported onto 3.14)
>>>>>>
>>>>>> I just cherry-picked 1102779f onto my UHD-3.14 and it cleaned it up
>>>>>> for me.
>>>>>>
>>>>>> I assume this will eventually make it to the UHD-3.14 branch? But if
>>>>>> not the cherry pick works fine
>>>>>>
>>>>>> EJ
>>>>>>
>>>>>>
>>>>>> On Fri, Nov 8, 2019, 2:43 PM Jonathan Lockhart via USRP-users <
>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>
>>>>>>> Jonathon,
>>>>>>>
>>>>>>> I will give that a try and see if it works.
>>>>>>>
>>>>>>>
>>>>>>> Nick,
>>>>>>>
>>>>>>> If the revert on Split_Stream fails, I will try switching from
>>>>>>> ce_clk to bus_clk and give that a try.
>>>>>>>
>>>>>>>
>>>>>>> Regards,
>>>>>>> Jon
>>>>>>>
>>>>>>> On Fri, Nov 8, 2019 at 1:52 PM Nick Foster <bistromath@gmail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Jonathon (Pendlum), correct me if I'm wrong, but I think this is
>>>>>>>> the usual split-stream-demands-more-bandwidth-than-RFNoC-bus-allow=
s problem.
>>>>>>>>
>>>>>>>> Jonathan (Lockhart), if I'm right, then in your
>>>>>>>> rfnoc_ce_auto_inst_e310.v, if you change the ce_clk/ce_rst in the
>>>>>>>> noc_block_split_stream instantiation to bus_clk/bus_rst, this may =
fix the
>>>>>>>> problem.
>>>>>>>>
>>>>>>>> Nick
>>>>>>>>
>>>>>>>> On Fri, Nov 8, 2019 at 10:20 AM Jonathon Pendlum <
>>>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>>>
>>>>>>>>> Hi Jon,
>>>>>>>>>
>>>>>>>>> Can you try reverting commit e39334fe on the fpga repo and
>>>>>>>>> rebuilding your bitstream? Let me know if that makes a difference=
 or not.
>>>>>>>>>
>>>>>>>>> Jonathon
>>>>>>>>>
>>>>>>>>> On Sat, Nov 9, 2019 at 12:13 AM Jonathan Lockhart via USRP-users =
<
>>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>>
>>>>>>>>>> Greetings Nick,
>>>>>>>>>>
>>>>>>>>>> Here is the screenshot of my GR flow graph, though it shouldn't
>>>>>>>>>> matter as the Split_Stream RFNoC Block I believe is a failure of=
 the python
>>>>>>>>>> or Verilog but the solutions in the link I sent in my previous e=
mail did
>>>>>>>>>> not resolve the issue.
>>>>>>>>>>
>>>>>>>>>> [image: Screenshot from 2019-11-08 10-06-50.png]
>>>>>>>>>>
>>>>>>>>>> Regards,
>>>>>>>>>> Jon
>>>>>>>>>>
>>>>>>>>>> On Thu, Nov 7, 2019 at 5:33 PM Nick Foster <bistromath@gmail.com=
>
>>>>>>>>>> wrote:
>>>>>>>>>>
>>>>>>>>>>> Can you be more specific about what your flowgraph looks like?
>>>>>>>>>>>
>>>>>>>>>>> On Thu, Nov 7, 2019 at 2:22 PM Jonathan Lockhart via USRP-users=
 <
>>>>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>>>>
>>>>>>>>>>>> Greetings,
>>>>>>>>>>>>
>>>>>>>>>>>> I was wondering if anyone had encountered the following error
>>>>>>>>>>>> and had a way to fix it?
>>>>>>>>>>>>
>>>>>>>>>>>> [INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
>>>>>>>>>>>> UHD_3.14.1.HEAD-0-g0347a6d8
>>>>>>>>>>>> [INFO] [E300] Loading FPGA image:
>>>>>>>>>>>> /home/root/localinstall/e300.bit...
>>>>>>>>>>>> [INFO] [E300] FPGA image loaded
>>>>>>>>>>>> [INFO] [E300] Detecting internal GPS
>>>>>>>>>>>> .... [INFO] [E300] GPSDO found
>>>>>>>>>>>> [INFO] [E300] Initializing core control (global registers)...
>>>>>>>>>>>>
>>>>>>>>>>>> [INFO] [E300] Performing register loopback test...
>>>>>>>>>>>> [INFO] [E300] Register loopback test passed
>>>>>>>>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>>>>>>>>>>> 0x12AD100000000000)
>>>>>>>>>>>> [WARNING] [RFNOC] Can't find a block controller for key
>>>>>>>>>>>> SplitStream, using default block controller!
>>>>>>>>>>>> [INFO] [0/SplitStream_0] Initializing block control (NOC ID:
>>>>>>>>>>>> 0x5757000000000000)
>>>>>>>>>>>> [ERROR] [UHD] Exception caught in safe-call.
>>>>>>>>>>>>   in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
>>>>>>>>>>>> uhd::endianness_t _endianness =3D (uhd::endianness_t)1u]
>>>>>>>>>>>>   at
>>>>>>>>>>>> /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp=
:52
>>>>>>>>>>>> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError:
>>>>>>>>>>>> Block ctrl (CE_01_Port_21) no response packet - AssertionError=
: bool(buff)
>>>>>>>>>>>>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool,
>>>>>>>>>>>> double) [with uhd::endianness_t _endianness =3D (uhd::endianne=
ss_t)1u;
>>>>>>>>>>>> uint64_t =3D long long unsigned int]
>>>>>>>>>>>>   at
>>>>>>>>>>>> /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp=
:142
>>>>>>>>>>>>
>>>>>>>>>>>> Traceback (most recent call last):
>>>>>>>>>>>>   File "rfnoc_fosphor_network_usrp.py", line 283, in <module>
>>>>>>>>>>>>     main()
>>>>>>>>>>>>   File "rfnoc_fosphor_network_usrp.py", line 272, in main
>>>>>>>>>>>>     tb =3D top_block_cls(fft_size=3Doptions.fft_size,
>>>>>>>>>>>> fpga_path=3Doptions.fpga_path, freq=3Doptions.freq, gain=3Dopt=
ions.gain,
>>>>>>>>>>>> host_ip_addr=3Doptions.host_ip_addr, samp_rate=3Doptions.samp_=
rate,
>>>>>>>>>>>> tdecay=3Doptions.tdecay, trise=3Doptions.trise)
>>>>>>>>>>>>   File "rfnoc_fosphor_network_usrp.py", line 43, in __init__
>>>>>>>>>>>>     self.device3 =3D variable_uhd_device3_0 =3D
>>>>>>>>>>>> ettus.device3(uhd.device_addr_t( ",".join(('type=3De3x0',
>>>>>>>>>>>> "master_clock_rate=3D%d,fpga=3D%s" % (samp_rate,fpga_path))) )=
)
>>>>>>>>>>>>   File
>>>>>>>>>>>> "/home/root/localinstall/usr/lib/python2.7/site-packages/ettus=
/ettus_swig.py",
>>>>>>>>>>>> line 1307, in make
>>>>>>>>>>>>     return _ettus_swig.device3_make(*args, **kwargs)
>>>>>>>>>>>> RuntimeError: EnvironmentError: IOError: [0/SplitStream_0]
>>>>>>>>>>>> sr_read64() failed: EnvironmentError: IOError: Block ctrl (CE_=
01_Port_21)
>>>>>>>>>>>> no response packet - AssertionError: bool(buff)
>>>>>>>>>>>>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool,
>>>>>>>>>>>> double) [with uhd::endianness_t _endianness =3D (uhd::endianne=
ss_t)1u;
>>>>>>>>>>>> uint64_t =3D long long unsigned int]
>>>>>>>>>>>>   at
>>>>>>>>>>>> /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp=
:142
>>>>>>>>>>>>
>>>>>>>>>>>> This is only occurring when I use the split stream block in
>>>>>>>>>>>> RFNoC. I have tried the fixes in [1] but unfortunately they ha=
ve not
>>>>>>>>>>>> helped. Also, fix 1, I can't seem to before b/c I am missing t=
he file
>>>>>>>>>>>> rfnoc_ce_auto_inst_<device>.v  as shown from the output when
>>>>>>>>>>>> attempting a "find" command in Ubuntu.
>>>>>>>>>>>>
>>>>>>>>>>>> find: =E2=80=98rfnoc_ce_auto_inst_e310.v=E2=80=99: No such fil=
e or directory
>>>>>>>>>>>>
>>>>>>>>>>>> I ran it on both ~/* and /* with no luck.
>>>>>>>>>>>>
>>>>>>>>>>>> Regards,
>>>>>>>>>>>> Jon Lockhart
>>>>>>>>>>>>
>>>>>>>>>>>> [1]
>>>>>>>>>>>> https://kb.ettus.com/RFNoC#Why_do_I_have_a_command_timeout_err=
or.3F
>>>>>>>>>>>>
>>>>>>>>>>>> _______________________________________________
>>>>>>>>>>>> USRP-users mailing list
>>>>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>>>>>
>>>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com
>>>>>>>>>>>>
>>>>>>>>>>> _______________________________________________
>>>>>>>>>> USRP-users mailing list
>>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om
>>>>>>>>>>
>>>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list
>>>>>>> USRP-users@lists.ettus.com
>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>
>>>>>>

--000000000000b63f3d0597cd0028
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Greetings Nick and EJ,</div><div><br></div><div>Yes y=
ou are correct, the split stream does require a FIFO after the output if I =
want to port to the arm or ZMQ. That resolved the run error.</div><div><br>=
</div><div>EJ,</div><div><br></div><div>Currently I am just modifying the d=
efault installation example that comes with UHD for the fosphor GNR files, =
and by default Ettus has it set to 56 MHz, which does appear to be a valid =
sample rate for the E312 SG3. I haven&#39;t seen any odd behavior with the =
default example, albeit I am still playing with the split stream so I may r=
un into issues still. <br></div><div><br></div><div><br></div><div>Regards,=
</div><div>Jon<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Nov 14, 2019 at 6:11 PM EJ Kreinar &lt;<a h=
ref=3D"mailto:ejkreinar@gmail.com">ejkreinar@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Cool=
! <br><br>I&#39;ll point out that your new build actually got past the old =
failure point you noted before, which was immediately after attempting to i=
nteract with the SplitStream RFNOC block!<br><br>```<br>[INFO] [0/SplitStre=
am_0] Initializing block control (NOC ID: 0x5757000000000000)<br>[ERROR] [U=
HD] Exception caught in safe-call.<br>[...etc...]<br>```<div><br><div>I sec=
ond Nick&#39;s thought. Try adding a FIFO after the second split-stream por=
t.</div><div><br></div><div>Though on further inspection, I actually doubt =
this particular application would work at all, since it looks like you&#39;=
re trying to push 56 MHz through=C2=A0the RFNoC FPGA-&gt;ARM transport and =
then through ZMQ. The E310 definitely cannot handle that sort of load, and =
you might get undefined behavior in RFNOC fosphor because the underflow wil=
l propagate back to the RFNoC Radio and momentarily stop the RF stream befo=
re restarting...<br></div></div><div><br></div><div>EJ</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 14,=
 2019 at 6:05 PM Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" ta=
rget=3D"_blank">bistromath@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I also haven&#39;t tes=
ted to see if this is a gr-ettus limitation or a UHD limitation.<br></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Nov 14, 2019 at 3:04 PM Nick Foster &lt;<a href=3D"mailto:bistromath@gmail=
.com" target=3D"_blank">bistromath@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>You can&#=
39;t have heterogenous output destinations on RFNoC blocks -- i.e., you can=
&#39;t send one output to the host and one output to another RFNoC block.</=
div><div><br></div><div>I&#39;m not sure why this limitation exists as ther=
e is no architectural reason I can see.<br></div><div><br></div><div>Nick<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, Nov 14, 2019 at 12:35 PM Jonathan Lockhart &lt;<a href=3D"m=
ailto:jlockhartrt@gmail.com" target=3D"_blank">jlockhartrt@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div>Greetings EJ,</div><div><br></div><div>So went and dug out t=
he E312 b/c I couldn&#39;t wait and unfortunately that didn&#39;t resolve t=
he issue I was experiencing. I cherry picked the new split_stream block, I =
am using the same flow graph as provided before, but when it goes to run on=
 the E312 I get the following error. <br></div><div><br></div><div>Tracebac=
k (most recent call last):<br>=C2=A0 File &quot;rfnoc_fosphor_radio_network=
_usrp.py&quot;, line 281, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=
=A0 File &quot;rfnoc_fosphor_radio_network_usrp.py&quot;, line 271, in main=
<br>=C2=A0 =C2=A0 tb.start()<br>=C2=A0 File &quot;/home/root/localinstall/u=
sr/lib/python2.7/site-packages/gnuradio/gr/top_block.py&quot;, line 109, in=
 start<br>=C2=A0 =C2=A0 top_block_start_unlocked(self._impl, max_noutput_it=
ems)<br>=C2=A0 File &quot;/home/root/localinstall/usr/lib/python2.7/site-pa=
ckages/gnuradio/gr/runtime_swig.py&quot;, line 3671, in top_block_start_unl=
ocked<br>=C2=A0 =C2=A0 return _runtime_swig.top_block_start_unlocked(*args,=
 **kwargs)<br>RuntimeError: uhd_rfnoc_SplitStream(9): missing connection fr=
om output port 0</div><div><br></div><div>Looks like something is missing f=
rom the split stream. I assume it needs to be fixed in the verilog. <br></d=
iv><div><br></div><div>I attached a screenshot of the new, cleaned up GNU r=
adio file. I had to remove a FIFO and switch to using a throttle b/c I wasn=
&#39;t able to get it all to fit in the bit file. <br></div><div><br></div>=
<div>Regards,</div><div>Jon<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 13, 2019 at 10:46 AM Jonat=
han Lockhart &lt;<a href=3D"mailto:jlockhartrt@gmail.com" target=3D"_blank"=
>jlockhartrt@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">Greetings EJ,<div><br></div><div>Tha=
nks for the info. I haven&#39;t had time to grab the new block as my dev bo=
x is packed for moving this weekend. I will get it downloaded and try it as=
 soon as I can.=C2=A0</div><div><br></div><div>Regards,</div><div>Jon</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Sat, Nov 9, 2019 at 9:48 AM EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@g=
mail.com" target=3D"_blank">ejkreinar@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hi there,<=
div dir=3D"auto"><br></div><div dir=3D"auto">Just want to chime in since I =
recently went through the upgrade process to UHD-3.14...</div><div dir=3D"a=
uto"><br></div><div dir=3D"auto"><span style=3D"font-family:sans-serif">Can=
 you confirm you&#39;re using uhd-3.14? If</span><span style=3D"font-family=
:sans-serif">=C2=A0so, this is actually a split stream fpga bug caused by t=
he commit Jon referred to, not the &quot;not enough bandwidth&quot; problem=
.</span></div><div dir=3D"auto"><span style=3D"font-family:sans-serif"><br>=
</span></div><div dir=3D"auto"><span style=3D"font-family:sans-serif">Fortu=
nately, rather than referring the old commit, the bug seems to have been fi=
xed in October on the master branch: https</span><font face=3D"sans-serif">=
://<a href=3D"http://github.com/EttusResearch/fpga/commit/1102779f49d44c9e8=
b88ce7251d203eb62ae26c9" target=3D"_blank">github.com/EttusResearch/fpga/co=
mmit/1102779f49d44c9e8b88ce7251d203eb62ae26c9</a> (but not yet ported onto =
3.14)</font></div><div dir=3D"auto"><font face=3D"sans-serif"><br></font></=
div><div dir=3D"auto"><font face=3D"sans-serif">I just cherry-picked 110277=
9f onto my UHD-3.14 and it cleaned it up for me.</font></div><div dir=3D"au=
to"><font face=3D"sans-serif"><br></font></div><div dir=3D"auto"><font face=
=3D"sans-serif">I assume this will eventually make it to the UHD-3.14 branc=
h? But if not the cherry pick works fine</font></div><div dir=3D"auto"><fon=
t face=3D"sans-serif"><br></font></div><div dir=3D"auto"><font face=3D"sans=
-serif">EJ</font></div><div dir=3D"auto"><font face=3D"sans-serif"><br></fo=
nt></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Fri, Nov 8, 2019, 2:43 PM Jonathan Lockhart via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Jonathon,<div><br></div>=
<div>I will give that a try and see if it works.</div><div><br></div><div><=
br></div><div>Nick,</div><div><br></div><div>If the revert on Split_Stream =
fails, I will try switching=C2=A0from ce_clk to bus_clk and give that a try=
.=C2=A0</div><div><br></div><div><br></div><div>Regards,</div><div>Jon</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Fri, Nov 8, 2019 at 1:52 PM Nick Foster &lt;<a href=3D"mailto:bistromat=
h@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">bistromath@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div>Jonathon (Pendlum), correct me if I&#39;m wrong=
, but I think this is the usual split-stream-demands-more-bandwidth-than-RF=
NoC-bus-allows problem.<br></div><div><br></div><div>Jonathan (Lockhart), i=
f I&#39;m right, then in your rfnoc_ce_auto_inst_e310.v, if you change the =
ce_clk/ce_rst in the noc_block_split_stream instantiation to bus_clk/bus_rs=
t, this may fix the problem.</div><div><br></div><div>Nick<br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri,=
 Nov 8, 2019 at 10:20 AM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pe=
ndlum@ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">jonathon.p=
endlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">Hi Jon,<div><br></div><div>Can you try rev=
erting commit e39334fe on the fpga repo and rebuilding your bitstream? Let =
me know if that makes a difference or not.</div><div><br></div><div>Jonatho=
n</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sat, Nov 9, 2019 at 12:13 AM Jonathan Lockhart via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Greetin=
gs Nick,</div><div><br></div><div>Here is the screenshot of my GR flow grap=
h, though it shouldn&#39;t matter as the Split_Stream RFNoC Block I believe=
 is a failure of the python or Verilog but the solutions in the link I sent=
 in my previous email did not resolve the issue. <br></div><div><br></div><=
div><div><img src=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=3D1ae81886=
2e&amp;attid=3D0.1&amp;th=3D16e50a0101adc4f2&amp;view=3Dfimg&amp;rm=3D16e50=
a0101adc4f2&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ99ZIcYsSIzDc4CWbFXICEsw=
Bw_zKbYxEPrUUzifdVbwxV4DA5-2ZfQVUkIJkApVRObYcGTjPk7XNPRZOpXERJ0z1KQjoXiW9JB=
GPgI82fhvoAzlecorcyXTfU&amp;disp=3Demb&amp;realattid=3Dii_k2qa0bd70&amp;zw"=
 alt=3D"Screenshot from 2019-11-08 10-06-50.png" width=3D"566" height=3D"24=
3"><br></div></div><div><br></div><div>Regards,</div><div>Jon<br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, Nov 7, 2019 at 5:33 PM Nick Foster &lt;<a href=3D"mailto:bistromath@gma=
il.com" rel=3D"noreferrer noreferrer" target=3D"_blank">bistromath@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Can you be more specific about what your flowgraph looks =
like?<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, Nov 7, 2019 at 2:22 PM Jonathan Lockhart via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferre=
r" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Greeti=
ngs,</div><div><br></div><div>I was wondering if anyone had encountered the=
 following error and had a way to fix it?</div><div><br></div><div>[INFO] [=
UHD] linux; GNU C++ version 4.9.2; Boost_105700; UHD_3.14.1.HEAD-0-g0347a6d=
8<br>[INFO] [E300] Loading FPGA image: /home/root/localinstall/e300.bit...<=
br>[INFO] [E300] FPGA image loaded<br>[INFO] [E300] Detecting internal GPS =
<br>.... [INFO] [E300] GPSDO found<br>[INFO] [E300] Initializing core contr=
ol (global registers)...<br><br>[INFO] [E300] Performing register loopback =
test... <br>[INFO] [E300] Register loopback test passed<br>[INFO] [0/Radio_=
0] Initializing block control (NOC ID: 0x12AD100000000000)<br>[WARNING] [RF=
NOC] Can&#39;t find a block controller for key SplitStream, using default b=
lock controller!<br>[INFO] [0/SplitStream_0] Initializing block control (NO=
C ID: 0x5757000000000000)<br>[ERROR] [UHD] Exception caught in safe-call.<b=
r>=C2=A0 in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with uh=
d::endianness_t _endianness =3D (uhd::endianness_t)1u]<br>=C2=A0 at /home/j=
on/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<br>this-&gt;send=
_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Block ctrl (CE_01_Po=
rt_21) no response packet - AssertionError: bool(buff)<br>=C2=A0 in uint64_=
t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double) [with uhd:=
:endianness_t _endianness =3D (uhd::endianness_t)1u; uint64_t =3D long long=
 unsigned int]<br>=C2=A0 at /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc=
/ctrl_iface.cpp:142<br><br>Traceback (most recent call last):<br>=C2=A0 Fil=
e &quot;rfnoc_fosphor_network_usrp.py&quot;, line 283, in &lt;module&gt;<br=
>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;rfnoc_fosphor_network_usrp.py&qu=
ot;, line 272, in main<br>=C2=A0 =C2=A0 tb =3D top_block_cls(fft_size=3Dopt=
ions.fft_size, fpga_path=3Doptions.fpga_path, freq=3Doptions.freq, gain=3Do=
ptions.gain, host_ip_addr=3Doptions.host_ip_addr, samp_rate=3Doptions.samp_=
rate, tdecay=3Doptions.tdecay, trise=3Doptions.trise)<br>=C2=A0 File &quot;=
rfnoc_fosphor_network_usrp.py&quot;, line 43, in __init__<br>=C2=A0 =C2=A0 =
self.device3 =3D variable_uhd_device3_0 =3D ettus.device3(uhd.device_addr_t=
( &quot;,&quot;.join((&#39;type=3De3x0&#39;, &quot;master_clock_rate=3D%d,f=
pga=3D%s&quot; % (samp_rate,fpga_path))) ))<br>=C2=A0 File &quot;/home/root=
/localinstall/usr/lib/python2.7/site-packages/ettus/ettus_swig.py&quot;, li=
ne 1307, in make<br>=C2=A0 =C2=A0 return _ettus_swig.device3_make(*args, **=
kwargs)<br>RuntimeError: EnvironmentError: IOError: [0/SplitStream_0] sr_re=
ad64() failed: EnvironmentError: IOError: Block ctrl (CE_01_Port_21) no res=
ponse packet - AssertionError: bool(buff)<br>=C2=A0 in uint64_t ctrl_iface_=
impl&lt;_endianness&gt;::wait_for_ack(bool, double) [with uhd::endianness_t=
 _endianness =3D (uhd::endianness_t)1u; uint64_t =3D long long unsigned int=
]<br>=C2=A0 at /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.c=
pp:142</div><div><br></div><div>This is only occurring when I use the split=
 stream block in RFNoC. I have tried the fixes in [1] but unfortunately the=
y have not helped. Also, fix 1, I can&#39;t seem to before b/c I am missing=
 the file <code>rfnoc_ce_auto_inst_&lt;device&gt;.v</code>=C2=A0 as shown f=
rom the output when attempting a &quot;find&quot; command in Ubuntu.=C2=A0<=
/div><div><br></div><div>find: =E2=80=98rfnoc_ce_auto_inst_e310.v=E2=80=99:=
 No such file or directory</div><div><br></div><div>I ran it on both ~/* an=
d /* with no luck. <br></div><div><br></div><div>Regards,</div><div>Jon Loc=
khart</div><div><br></div><div>[1] <a href=3D"https://kb.ettus.com/RFNoC#Wh=
y_do_I_have_a_command_timeout_error.3F" rel=3D"noreferrer noreferrer" targe=
t=3D"_blank">https://kb.ettus.com/RFNoC#Why_do_I_have_a_command_timeout_err=
or.3F</a></div><div><br></div></div>
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
</blockquote></div>
</blockquote></div>

--000000000000b63f3d0597cd0028--


--===============7075276596357294484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7075276596357294484==--

