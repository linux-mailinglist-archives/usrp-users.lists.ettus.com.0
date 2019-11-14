Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DBAFD15B
	for <lists+usrp-users@lfdr.de>; Fri, 15 Nov 2019 00:12:35 +0100 (CET)
Received: from [::1] (port=42902 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iVOHy-0006np-LG; Thu, 14 Nov 2019 18:12:34 -0500
Received: from mail-wr1-f46.google.com ([209.85.221.46]:39027)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1iVOHu-0006gF-T5
 for usrp-users@lists.ettus.com; Thu, 14 Nov 2019 18:12:31 -0500
Received: by mail-wr1-f46.google.com with SMTP id l7so8808761wrp.6
 for <usrp-users@lists.ettus.com>; Thu, 14 Nov 2019 15:12:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CC1v2J5Ypn+UsXevOaDOpNWbY0x21GfxDM/I1BbVV9o=;
 b=ewFSEwAHnBSUOHX87cHrLyM2D2LYbHdB65zEjkG7tkWkMpWVKrDuhnZGCjuF6wIdsK
 yhF0sfJ9ENI3tXvy7UtiHTLU0fiZbzZpQf4xlFG1VXg3nTpvZphJi0eeV2WznY4OYiYX
 I9MwQ9GZ68eBAxSocHO+eoExT3jqmjyCBcMJHTYGBRufyAAMwV2d+bLtkRCFon0Abxy8
 DTqwiFndftzPBy2wKB+kqFo7VkcT78A2f22CpOJiOcdPfl7vE7aCfGUnJxdbXdqRYKi8
 Buwg6lBEDSvIMp/Wg1pJlfHqgZlamEq/JnnFSkq+uE2VzQog8aZ2SFLPMLm2aEFQPswr
 6EGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CC1v2J5Ypn+UsXevOaDOpNWbY0x21GfxDM/I1BbVV9o=;
 b=lW2XPFn0RIcI2VwPisn/fJUUKSGHzxzqs4corEnOfW1+IgDQkkCcfWE0BCZul88l1m
 MJrfRB1HAj2SKx2f2eZ+uSPXXko5FjXQ5zdd6I/97ieM0QcrGbWeGy/F/5Uh5QhwLS1w
 1y6YqSoKnA0H/Gzt6OtROmH3be/96Bl10x/kSHDYKBNx5kvl7zpoPtRVE3lluAIuUfWi
 SvR9HJQeL5GcmUuSX254O1NKrBTx+/H0ZTJyVjVtSRJ6S2E7Q/OCJTPC8iVkrwsUAUhp
 hvxTyKAEeeBo4g0gCuI23yD6Ke+2/GmG8pZU2t5GH29gO9TdKhQ3i/EYFQpIPrht7S7+
 19Cw==
X-Gm-Message-State: APjAAAWL81mPuBPdIa6B+d4wZDSeTvxzQBT9My2zZkzNVUT6NxhiC9oT
 HIOsZyhrw926Tq+4a6lEhglAncLJ62YxCTgwlW4=
X-Google-Smtp-Source: APXvYqzVHpAjV/2JjDSa39ncetA6xy1K1Ip5mwAaCMTcmNLx58uke+D/7XhgOlz0hTReVzpfG2uAMvd+G0J4p4cEknM=
X-Received: by 2002:adf:f048:: with SMTP id t8mr12225619wro.237.1573773109682; 
 Thu, 14 Nov 2019 15:11:49 -0800 (PST)
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
In-Reply-To: <CA+JMMq-7eRAbDsp7A6Kh9dQEKfMsQPyUyrnHmSgpnBxpSCueig@mail.gmail.com>
Date: Thu, 14 Nov 2019 18:11:38 -0500
Message-ID: <CADRnH22pBed-g4_g407i_Kp-O2p=Sb2LU5GJj-tXA93z5ibDLg@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5009533573552350844=="
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

--===============5009533573552350844==
Content-Type: multipart/alternative; boundary="00000000000028e72e0597569bbe"

--00000000000028e72e0597569bbe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Cool!

I'll point out that your new build actually got past the old failure point
you noted before, which was immediately after attempting to interact with
the SplitStream RFNOC block!

```
[INFO] [0/SplitStream_0] Initializing block control (NOC ID:
0x5757000000000000)
[ERROR] [UHD] Exception caught in safe-call.
[...etc...]
```

I second Nick's thought. Try adding a FIFO after the second split-stream
port.

Though on further inspection, I actually doubt this particular application
would work at all, since it looks like you're trying to push 56 MHz
through the RFNoC FPGA->ARM transport and then through ZMQ. The E310
definitely cannot handle that sort of load, and you might get undefined
behavior in RFNOC fosphor because the underflow will propagate back to the
RFNoC Radio and momentarily stop the RF stream before restarting...

EJ

On Thu, Nov 14, 2019 at 6:05 PM Nick Foster <bistromath@gmail.com> wrote:

> I also haven't tested to see if this is a gr-ettus limitation or a UHD
> limitation.
>
> On Thu, Nov 14, 2019 at 3:04 PM Nick Foster <bistromath@gmail.com> wrote:
>
>> You can't have heterogenous output destinations on RFNoC blocks -- i.e.,
>> you can't send one output to the host and one output to another RFNoC bl=
ock.
>>
>> I'm not sure why this limitation exists as there is no architectural
>> reason I can see.
>>
>> Nick
>>
>> On Thu, Nov 14, 2019 at 12:35 PM Jonathan Lockhart <jlockhartrt@gmail.co=
m>
>> wrote:
>>
>>> Greetings EJ,
>>>
>>> So went and dug out the E312 b/c I couldn't wait and unfortunately that
>>> didn't resolve the issue I was experiencing. I cherry picked the new
>>> split_stream block, I am using the same flow graph as provided before, =
but
>>> when it goes to run on the E312 I get the following error.
>>>
>>> Traceback (most recent call last):
>>>   File "rfnoc_fosphor_radio_network_usrp.py", line 281, in <module>
>>>     main()
>>>   File "rfnoc_fosphor_radio_network_usrp.py", line 271, in main
>>>     tb.start()
>>>   File
>>> "/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr/to=
p_block.py",
>>> line 109, in start
>>>     top_block_start_unlocked(self._impl, max_noutput_items)
>>>   File
>>> "/home/root/localinstall/usr/lib/python2.7/site-packages/gnuradio/gr/ru=
ntime_swig.py",
>>> line 3671, in top_block_start_unlocked
>>>     return _runtime_swig.top_block_start_unlocked(*args, **kwargs)
>>> RuntimeError: uhd_rfnoc_SplitStream(9): missing connection from output
>>> port 0
>>>
>>> Looks like something is missing from the split stream. I assume it need=
s
>>> to be fixed in the verilog.
>>>
>>> I attached a screenshot of the new, cleaned up GNU radio file. I had to
>>> remove a FIFO and switch to using a throttle b/c I wasn't able to get i=
t
>>> all to fit in the bit file.
>>>
>>> Regards,
>>> Jon
>>>
>>> On Wed, Nov 13, 2019 at 10:46 AM Jonathan Lockhart <
>>> jlockhartrt@gmail.com> wrote:
>>>
>>>> Greetings EJ,
>>>>
>>>> Thanks for the info. I haven't had time to grab the new block as my de=
v
>>>> box is packed for moving this weekend. I will get it downloaded and tr=
y it
>>>> as soon as I can.
>>>>
>>>> Regards,
>>>> Jon
>>>>
>>>> On Sat, Nov 9, 2019 at 9:48 AM EJ Kreinar <ejkreinar@gmail.com> wrote:
>>>>
>>>>> Hi there,
>>>>>
>>>>> Just want to chime in since I recently went through the upgrade
>>>>> process to UHD-3.14...
>>>>>
>>>>> Can you confirm you're using uhd-3.14? If so, this is actually a
>>>>> split stream fpga bug caused by the commit Jon referred to, not the "=
not
>>>>> enough bandwidth" problem.
>>>>>
>>>>> Fortunately, rather than referring the old commit, the bug seems to
>>>>> have been fixed in October on the master branch: https://
>>>>> github.com/EttusResearch/fpga/commit/1102779f49d44c9e8b88ce7251d203eb=
62ae26c9
>>>>> (but not yet ported onto 3.14)
>>>>>
>>>>> I just cherry-picked 1102779f onto my UHD-3.14 and it cleaned it up
>>>>> for me.
>>>>>
>>>>> I assume this will eventually make it to the UHD-3.14 branch? But if
>>>>> not the cherry pick works fine
>>>>>
>>>>> EJ
>>>>>
>>>>>
>>>>> On Fri, Nov 8, 2019, 2:43 PM Jonathan Lockhart via USRP-users <
>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>
>>>>>> Jonathon,
>>>>>>
>>>>>> I will give that a try and see if it works.
>>>>>>
>>>>>>
>>>>>> Nick,
>>>>>>
>>>>>> If the revert on Split_Stream fails, I will try switching from ce_cl=
k
>>>>>> to bus_clk and give that a try.
>>>>>>
>>>>>>
>>>>>> Regards,
>>>>>> Jon
>>>>>>
>>>>>> On Fri, Nov 8, 2019 at 1:52 PM Nick Foster <bistromath@gmail.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Jonathon (Pendlum), correct me if I'm wrong, but I think this is th=
e
>>>>>>> usual split-stream-demands-more-bandwidth-than-RFNoC-bus-allows pro=
blem.
>>>>>>>
>>>>>>> Jonathan (Lockhart), if I'm right, then in your
>>>>>>> rfnoc_ce_auto_inst_e310.v, if you change the ce_clk/ce_rst in the
>>>>>>> noc_block_split_stream instantiation to bus_clk/bus_rst, this may f=
ix the
>>>>>>> problem.
>>>>>>>
>>>>>>> Nick
>>>>>>>
>>>>>>> On Fri, Nov 8, 2019 at 10:20 AM Jonathon Pendlum <
>>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>>
>>>>>>>> Hi Jon,
>>>>>>>>
>>>>>>>> Can you try reverting commit e39334fe on the fpga repo and
>>>>>>>> rebuilding your bitstream? Let me know if that makes a difference =
or not.
>>>>>>>>
>>>>>>>> Jonathon
>>>>>>>>
>>>>>>>> On Sat, Nov 9, 2019 at 12:13 AM Jonathan Lockhart via USRP-users <
>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>
>>>>>>>>> Greetings Nick,
>>>>>>>>>
>>>>>>>>> Here is the screenshot of my GR flow graph, though it shouldn't
>>>>>>>>> matter as the Split_Stream RFNoC Block I believe is a failure of =
the python
>>>>>>>>> or Verilog but the solutions in the link I sent in my previous em=
ail did
>>>>>>>>> not resolve the issue.
>>>>>>>>>
>>>>>>>>> [image: Screenshot from 2019-11-08 10-06-50.png]
>>>>>>>>>
>>>>>>>>> Regards,
>>>>>>>>> Jon
>>>>>>>>>
>>>>>>>>> On Thu, Nov 7, 2019 at 5:33 PM Nick Foster <bistromath@gmail.com>
>>>>>>>>> wrote:
>>>>>>>>>
>>>>>>>>>> Can you be more specific about what your flowgraph looks like?
>>>>>>>>>>
>>>>>>>>>> On Thu, Nov 7, 2019 at 2:22 PM Jonathan Lockhart via USRP-users =
<
>>>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>>>
>>>>>>>>>>> Greetings,
>>>>>>>>>>>
>>>>>>>>>>> I was wondering if anyone had encountered the following error
>>>>>>>>>>> and had a way to fix it?
>>>>>>>>>>>
>>>>>>>>>>> [INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
>>>>>>>>>>> UHD_3.14.1.HEAD-0-g0347a6d8
>>>>>>>>>>> [INFO] [E300] Loading FPGA image:
>>>>>>>>>>> /home/root/localinstall/e300.bit...
>>>>>>>>>>> [INFO] [E300] FPGA image loaded
>>>>>>>>>>> [INFO] [E300] Detecting internal GPS
>>>>>>>>>>> .... [INFO] [E300] GPSDO found
>>>>>>>>>>> [INFO] [E300] Initializing core control (global registers)...
>>>>>>>>>>>
>>>>>>>>>>> [INFO] [E300] Performing register loopback test...
>>>>>>>>>>> [INFO] [E300] Register loopback test passed
>>>>>>>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>>>>>>>>>> 0x12AD100000000000)
>>>>>>>>>>> [WARNING] [RFNOC] Can't find a block controller for key
>>>>>>>>>>> SplitStream, using default block controller!
>>>>>>>>>>> [INFO] [0/SplitStream_0] Initializing block control (NOC ID:
>>>>>>>>>>> 0x5757000000000000)
>>>>>>>>>>> [ERROR] [UHD] Exception caught in safe-call.
>>>>>>>>>>>   in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
>>>>>>>>>>> uhd::endianness_t _endianness =3D (uhd::endianness_t)1u]
>>>>>>>>>>>   at
>>>>>>>>>>> /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:=
52
>>>>>>>>>>> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError:
>>>>>>>>>>> Block ctrl (CE_01_Port_21) no response packet - AssertionError:=
 bool(buff)
>>>>>>>>>>>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool,
>>>>>>>>>>> double) [with uhd::endianness_t _endianness =3D (uhd::endiannes=
s_t)1u;
>>>>>>>>>>> uint64_t =3D long long unsigned int]
>>>>>>>>>>>   at
>>>>>>>>>>> /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:=
142
>>>>>>>>>>>
>>>>>>>>>>> Traceback (most recent call last):
>>>>>>>>>>>   File "rfnoc_fosphor_network_usrp.py", line 283, in <module>
>>>>>>>>>>>     main()
>>>>>>>>>>>   File "rfnoc_fosphor_network_usrp.py", line 272, in main
>>>>>>>>>>>     tb =3D top_block_cls(fft_size=3Doptions.fft_size,
>>>>>>>>>>> fpga_path=3Doptions.fpga_path, freq=3Doptions.freq, gain=3Dopti=
ons.gain,
>>>>>>>>>>> host_ip_addr=3Doptions.host_ip_addr, samp_rate=3Doptions.samp_r=
ate,
>>>>>>>>>>> tdecay=3Doptions.tdecay, trise=3Doptions.trise)
>>>>>>>>>>>   File "rfnoc_fosphor_network_usrp.py", line 43, in __init__
>>>>>>>>>>>     self.device3 =3D variable_uhd_device3_0 =3D
>>>>>>>>>>> ettus.device3(uhd.device_addr_t( ",".join(('type=3De3x0',
>>>>>>>>>>> "master_clock_rate=3D%d,fpga=3D%s" % (samp_rate,fpga_path))) ))
>>>>>>>>>>>   File
>>>>>>>>>>> "/home/root/localinstall/usr/lib/python2.7/site-packages/ettus/=
ettus_swig.py",
>>>>>>>>>>> line 1307, in make
>>>>>>>>>>>     return _ettus_swig.device3_make(*args, **kwargs)
>>>>>>>>>>> RuntimeError: EnvironmentError: IOError: [0/SplitStream_0]
>>>>>>>>>>> sr_read64() failed: EnvironmentError: IOError: Block ctrl (CE_0=
1_Port_21)
>>>>>>>>>>> no response packet - AssertionError: bool(buff)
>>>>>>>>>>>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool,
>>>>>>>>>>> double) [with uhd::endianness_t _endianness =3D (uhd::endiannes=
s_t)1u;
>>>>>>>>>>> uint64_t =3D long long unsigned int]
>>>>>>>>>>>   at
>>>>>>>>>>> /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:=
142
>>>>>>>>>>>
>>>>>>>>>>> This is only occurring when I use the split stream block in
>>>>>>>>>>> RFNoC. I have tried the fixes in [1] but unfortunately they hav=
e not
>>>>>>>>>>> helped. Also, fix 1, I can't seem to before b/c I am missing th=
e file
>>>>>>>>>>> rfnoc_ce_auto_inst_<device>.v  as shown from the output when
>>>>>>>>>>> attempting a "find" command in Ubuntu.
>>>>>>>>>>>
>>>>>>>>>>> find: =E2=80=98rfnoc_ce_auto_inst_e310.v=E2=80=99: No such file=
 or directory
>>>>>>>>>>>
>>>>>>>>>>> I ran it on both ~/* and /* with no luck.
>>>>>>>>>>>
>>>>>>>>>>> Regards,
>>>>>>>>>>> Jon Lockhart
>>>>>>>>>>>
>>>>>>>>>>> [1]
>>>>>>>>>>> https://kb.ettus.com/RFNoC#Why_do_I_have_a_command_timeout_erro=
r.3F
>>>>>>>>>>>
>>>>>>>>>>> _______________________________________________
>>>>>>>>>>> USRP-users mailing list
>>>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>>>>
>>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com
>>>>>>>>>>>
>>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list
>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m
>>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>> USRP-users mailing list
>>>>>> USRP-users@lists.ettus.com
>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>
>>>>>

--00000000000028e72e0597569bbe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Cool! <br><br>I&#39;ll point out that your new build actua=
lly got past the old failure point you noted before, which was immediately =
after attempting to interact with the SplitStream RFNOC block!<br><br>```<b=
r>[INFO] [0/SplitStream_0] Initializing block control (NOC ID: 0x5757000000=
000000)<br>[ERROR] [UHD] Exception caught in safe-call.<br>[...etc...]<br>`=
``<div><br><div>I second Nick&#39;s thought. Try adding a FIFO after the se=
cond split-stream port.</div><div><br></div><div>Though on further inspecti=
on, I actually doubt this particular application would work at all, since i=
t looks like you&#39;re trying to push 56 MHz through=C2=A0the RFNoC FPGA-&=
gt;ARM transport and then through ZMQ. The E310 definitely cannot handle th=
at sort of load, and you might get undefined behavior in RFNOC fosphor beca=
use the underflow will propagate back to the RFNoC Radio and momentarily st=
op the RF stream before restarting...<br></div></div><div><br></div><div>EJ=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, Nov 14, 2019 at 6:05 PM Nick Foster &lt;<a href=3D"mailto:bis=
tromath@gmail.com">bistromath@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I also haven&#39;t =
tested to see if this is a gr-ettus limitation or a UHD limitation.<br></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, Nov 14, 2019 at 3:04 PM Nick Foster &lt;<a href=3D"mailto:bistromath@gm=
ail.com" target=3D"_blank">bistromath@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>You ca=
n&#39;t have heterogenous output destinations on RFNoC blocks -- i.e., you =
can&#39;t send one output to the host and one output to another RFNoC block=
.</div><div><br></div><div>I&#39;m not sure why this limitation exists as t=
here is no architectural reason I can see.<br></div><div><br></div><div>Nic=
k<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Nov 14, 2019 at 12:35 PM Jonathan Lockhart &lt;<a href=
=3D"mailto:jlockhartrt@gmail.com" target=3D"_blank">jlockhartrt@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div>Greetings EJ,</div><div><br></div><div>So went and dug =
out the E312 b/c I couldn&#39;t wait and unfortunately that didn&#39;t reso=
lve the issue I was experiencing. I cherry picked the new split_stream bloc=
k, I am using the same flow graph as provided before, but when it goes to r=
un on the E312 I get the following error. <br></div><div><br></div><div>Tra=
ceback (most recent call last):<br>=C2=A0 File &quot;rfnoc_fosphor_radio_ne=
twork_usrp.py&quot;, line 281, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br=
>=C2=A0 File &quot;rfnoc_fosphor_radio_network_usrp.py&quot;, line 271, in =
main<br>=C2=A0 =C2=A0 tb.start()<br>=C2=A0 File &quot;/home/root/localinsta=
ll/usr/lib/python2.7/site-packages/gnuradio/gr/top_block.py&quot;, line 109=
, in start<br>=C2=A0 =C2=A0 top_block_start_unlocked(self._impl, max_noutpu=
t_items)<br>=C2=A0 File &quot;/home/root/localinstall/usr/lib/python2.7/sit=
e-packages/gnuradio/gr/runtime_swig.py&quot;, line 3671, in top_block_start=
_unlocked<br>=C2=A0 =C2=A0 return _runtime_swig.top_block_start_unlocked(*a=
rgs, **kwargs)<br>RuntimeError: uhd_rfnoc_SplitStream(9): missing connectio=
n from output port 0</div><div><br></div><div>Looks like something is missi=
ng from the split stream. I assume it needs to be fixed in the verilog. <br=
></div><div><br></div><div>I attached a screenshot of the new, cleaned up G=
NU radio file. I had to remove a FIFO and switch to using a throttle b/c I =
wasn&#39;t able to get it all to fit in the bit file. <br></div><div><br></=
div><div>Regards,</div><div>Jon<br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 13, 2019 at 10:46 AM J=
onathan Lockhart &lt;<a href=3D"mailto:jlockhartrt@gmail.com" target=3D"_bl=
ank">jlockhartrt@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">Greetings EJ,<div><br></div><div=
>Thanks for the info. I haven&#39;t had time to grab the new block as my de=
v box is packed for moving this weekend. I will get it downloaded and try i=
t as soon as I can.=C2=A0</div><div><br></div><div>Regards,</div><div>Jon</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Sat, Nov 9, 2019 at 9:48 AM EJ Kreinar &lt;<a href=3D"mailto:ejkrein=
ar@gmail.com" target=3D"_blank">ejkreinar@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hi the=
re,<div dir=3D"auto"><br></div><div dir=3D"auto">Just want to chime in sinc=
e I recently went through the upgrade process to UHD-3.14...</div><div dir=
=3D"auto"><br></div><div dir=3D"auto"><span style=3D"font-family:sans-serif=
">Can you confirm you&#39;re using uhd-3.14? If</span><span style=3D"font-f=
amily:sans-serif">=C2=A0so, this is actually a split stream fpga bug caused=
 by the commit Jon referred to, not the &quot;not enough bandwidth&quot; pr=
oblem.</span></div><div dir=3D"auto"><span style=3D"font-family:sans-serif"=
><br></span></div><div dir=3D"auto"><span style=3D"font-family:sans-serif">=
Fortunately, rather than referring the old commit, the bug seems to have be=
en fixed in October on the master branch: https</span><font face=3D"sans-se=
rif">://<a href=3D"http://github.com/EttusResearch/fpga/commit/1102779f49d4=
4c9e8b88ce7251d203eb62ae26c9" target=3D"_blank">github.com/EttusResearch/fp=
ga/commit/1102779f49d44c9e8b88ce7251d203eb62ae26c9</a> (but not yet ported =
onto 3.14)</font></div><div dir=3D"auto"><font face=3D"sans-serif"><br></fo=
nt></div><div dir=3D"auto"><font face=3D"sans-serif">I just cherry-picked 1=
102779f onto my UHD-3.14 and it cleaned it up for me.</font></div><div dir=
=3D"auto"><font face=3D"sans-serif"><br></font></div><div dir=3D"auto"><fon=
t face=3D"sans-serif">I assume this will eventually make it to the UHD-3.14=
 branch? But if not the cherry pick works fine</font></div><div dir=3D"auto=
"><font face=3D"sans-serif"><br></font></div><div dir=3D"auto"><font face=
=3D"sans-serif">EJ</font></div><div dir=3D"auto"><font face=3D"sans-serif">=
<br></font></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Fri, Nov 8, 2019, 2:43 PM Jonathan Lockhart via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Jonathon,<div><b=
r></div><div>I will give that a try and see if it works.</div><div><br></di=
v><div><br></div><div>Nick,</div><div><br></div><div>If the revert on Split=
_Stream fails, I will try switching=C2=A0from ce_clk to bus_clk and give th=
at a try.=C2=A0</div><div><br></div><div><br></div><div>Regards,</div><div>=
Jon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Fri, Nov 8, 2019 at 1:52 PM Nick Foster &lt;<a href=3D"mailto:b=
istromath@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">bistro=
math@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div>Jonathon (Pendlum), correct me if I&#39=
;m wrong, but I think this is the usual split-stream-demands-more-bandwidth=
-than-RFNoC-bus-allows problem.<br></div><div><br></div><div>Jonathan (Lock=
hart), if I&#39;m right, then in your rfnoc_ce_auto_inst_e310.v, if you cha=
nge the ce_clk/ce_rst in the noc_block_split_stream instantiation to bus_cl=
k/bus_rst, this may fix the problem.</div><div><br></div><div>Nick<br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Fri, Nov 8, 2019 at 10:20 AM Jonathon Pendlum &lt;<a href=3D"mailto:jon=
athon.pendlum@ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">jo=
nathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">Hi Jon,<div><br></div><div>Can you=
 try reverting commit e39334fe on the fpga repo and rebuilding your bitstre=
am? Let me know if that makes a difference or not.</div><div><br></div><div=
>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Nov 9, 2019 at 12:13 AM Jonathan Lockhart via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v>Greetings Nick,</div><div><br></div><div>Here is the screenshot of my GR =
flow graph, though it shouldn&#39;t matter as the Split_Stream RFNoC Block =
I believe is a failure of the python or Verilog but the solutions in the li=
nk I sent in my previous email did not resolve the issue. <br></div><div><b=
r></div><div><div><img src=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=
=3D1ae818862e&amp;attid=3D0.1&amp;th=3D16e50a0101adc4f2&amp;view=3Dfimg&amp=
;rm=3D16e50a0101adc4f2&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ99ZIcYsSIzDc=
4CWbFXICEswBw_zKbYxEPrUUzifdVbwxV4DA5-2ZfQVUkIJkApVRObYcGTjPk7XNPRZOpXERJ0z=
1KQjoXiW9JBGPgI82fhvoAzlecorcyXTfU&amp;disp=3Demb&amp;realattid=3Dii_k2qa0b=
d70&amp;zw" alt=3D"Screenshot from 2019-11-08 10-06-50.png" width=3D"566" h=
eight=3D"243"><br></div></div><div><br></div><div>Regards,</div><div>Jon<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Nov 7, 2019 at 5:33 PM Nick Foster &lt;<a href=3D"mailto:bis=
tromath@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">bistroma=
th@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Can you be more specific about what your flowg=
raph looks like?<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, Nov 7, 2019 at 2:22 PM Jonathan Lockhart via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferre=
r noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div>Greetings,</div><div><br></div><div>I was wondering if anyone had enco=
untered the following error and had a way to fix it?</div><div><br></div><d=
iv>[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700; UHD_3.14.1.HEAD=
-0-g0347a6d8<br>[INFO] [E300] Loading FPGA image: /home/root/localinstall/e=
300.bit...<br>[INFO] [E300] FPGA image loaded<br>[INFO] [E300] Detecting in=
ternal GPS <br>.... [INFO] [E300] GPSDO found<br>[INFO] [E300] Initializing=
 core control (global registers)...<br><br>[INFO] [E300] Performing registe=
r loopback test... <br>[INFO] [E300] Register loopback test passed<br>[INFO=
] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000000)<br>[W=
ARNING] [RFNOC] Can&#39;t find a block controller for key SplitStream, usin=
g default block controller!<br>[INFO] [0/SplitStream_0] Initializing block =
control (NOC ID: 0x5757000000000000)<br>[ERROR] [UHD] Exception caught in s=
afe-call.<br>=C2=A0 in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl=
() [with uhd::endianness_t _endianness =3D (uhd::endianness_t)1u]<br>=C2=A0=
 at /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:52<br>th=
is-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError: IOError: Block ctr=
l (CE_01_Port_21) no response packet - AssertionError: bool(buff)<br>=C2=A0=
 in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double)=
 [with uhd::endianness_t _endianness =3D (uhd::endianness_t)1u; uint64_t =
=3D long long unsigned int]<br>=C2=A0 at /home/jon/rfnoc_3.14.1.1/src/uhd/h=
ost/lib/rfnoc/ctrl_iface.cpp:142<br><br>Traceback (most recent call last):<=
br>=C2=A0 File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 283, in &lt;=
module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;rfnoc_fosphor_netwo=
rk_usrp.py&quot;, line 272, in main<br>=C2=A0 =C2=A0 tb =3D top_block_cls(f=
ft_size=3Doptions.fft_size, fpga_path=3Doptions.fpga_path, freq=3Doptions.f=
req, gain=3Doptions.gain, host_ip_addr=3Doptions.host_ip_addr, samp_rate=3D=
options.samp_rate, tdecay=3Doptions.tdecay, trise=3Doptions.trise)<br>=C2=
=A0 File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 43, in __init__<br=
>=C2=A0 =C2=A0 self.device3 =3D variable_uhd_device3_0 =3D ettus.device3(uh=
d.device_addr_t( &quot;,&quot;.join((&#39;type=3De3x0&#39;, &quot;master_cl=
ock_rate=3D%d,fpga=3D%s&quot; % (samp_rate,fpga_path))) ))<br>=C2=A0 File &=
quot;/home/root/localinstall/usr/lib/python2.7/site-packages/ettus/ettus_sw=
ig.py&quot;, line 1307, in make<br>=C2=A0 =C2=A0 return _ettus_swig.device3=
_make(*args, **kwargs)<br>RuntimeError: EnvironmentError: IOError: [0/Split=
Stream_0] sr_read64() failed: EnvironmentError: IOError: Block ctrl (CE_01_=
Port_21) no response packet - AssertionError: bool(buff)<br>=C2=A0 in uint6=
4_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double) [with uh=
d::endianness_t _endianness =3D (uhd::endianness_t)1u; uint64_t =3D long lo=
ng unsigned int]<br>=C2=A0 at /home/jon/rfnoc_3.14.1.1/src/uhd/host/lib/rfn=
oc/ctrl_iface.cpp:142</div><div><br></div><div>This is only occurring when =
I use the split stream block in RFNoC. I have tried the fixes in [1] but un=
fortunately they have not helped. Also, fix 1, I can&#39;t seem to before b=
/c I am missing the file <code>rfnoc_ce_auto_inst_&lt;device&gt;.v</code>=
=C2=A0 as shown from the output when attempting a &quot;find&quot; command =
in Ubuntu.=C2=A0</div><div><br></div><div>find: =E2=80=98rfnoc_ce_auto_inst=
_e310.v=E2=80=99: No such file or directory</div><div><br></div><div>I ran =
it on both ~/* and /* with no luck. <br></div><div><br></div><div>Regards,<=
/div><div>Jon Lockhart</div><div><br></div><div>[1] <a href=3D"https://kb.e=
ttus.com/RFNoC#Why_do_I_have_a_command_timeout_error.3F" rel=3D"noreferrer =
noreferrer" target=3D"_blank">https://kb.ettus.com/RFNoC#Why_do_I_have_a_co=
mmand_timeout_error.3F</a></div><div><br></div></div>
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

--00000000000028e72e0597569bbe--


--===============5009533573552350844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5009533573552350844==--

