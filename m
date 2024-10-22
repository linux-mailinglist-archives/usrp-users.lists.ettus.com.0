Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ADF9A9E8C
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2024 11:32:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34E1338544D
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2024 05:32:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729589536; bh=MygXHsdPU7MtUxLEIqCWT8VdMGxs6Nhl+M/v2GzdIK0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bouOS5Z81bipocRAs+PqPI0LXwv8RuyHb2GJJaViFRH/QpokE7hoZA3V8EZoLbuYP
	 9GkOl3a1JNTxwCBw2bNta50Q1FSbGr4BuwVsnO8kIuWmeUVCiPzVFGgvMNCGE+7OGh
	 tD4kd/rgxAcGY4LGt0BGLZExZLNOOaB2X1JL/w9f7S+4/GnmBt4I8qYfMY9k/3wBc5
	 CVGtHVg+aKljnMEn0EUX9VBpDUTG0ZR8gALu0iol/2o3vBqxFd/RA/sFtcV4LrH2Hr
	 arrptOWYVShwRITnJDlXcch3j9CkE3BTRak8oEYmdE7oIZ7AwmJIkACy1GRPRGw4aC
	 3IJD1Vxqgp/ug==
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 68CFC385021
	for <usrp-users@lists.ettus.com>; Tue, 22 Oct 2024 05:31:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=cyronics-com.20230601.gappssmtp.com header.i=@cyronics-com.20230601.gappssmtp.com header.b="e8ztQ071";
	dkim-atps=neutral
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-6e3cdbc25a0so58529147b3.2
        for <usrp-users@lists.ettus.com>; Tue, 22 Oct 2024 02:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cyronics-com.20230601.gappssmtp.com; s=20230601; t=1729589506; x=1730194306; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I72hvn+FKIuzbRYm1TMgBllVI8ObkNsTVLkMYgYmIdA=;
        b=e8ztQ0715eppERfWLPyNCIHMhfooYgBvXrEkklsmF8HzJqwbtSjLUlWDieGAZJ183G
         bzfG1dc3R9h3FkvZfNaSYJBOD2GLjvd4wG3AKnzq6MI7CprBY9Vv2USc8uY/WbRSkMm2
         aZYGvdt43E3Jttgf4RGrxuocqzr4O4p5jeVt3oLUsBqTIdQB6obreAXB7WoYoJRL8yya
         Stx3JxjBZeM5YaG4n/HOGLoicbvUrSWqwNnwta1gJM1fKe36qqMxeYuDvf/gHPKMkZKe
         l/K1SvDGm69OXp8doBZ27RLeJg3c4aZg+JPNgudnoav8fPsBQb6Lr3f68ubq0s2LUasT
         +Mlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729589506; x=1730194306;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I72hvn+FKIuzbRYm1TMgBllVI8ObkNsTVLkMYgYmIdA=;
        b=a2lOxUWy7NJosgLkbhxb3xb4AyI5OIh8Le+AJoRKH9AqfTkLeppbm7PO0/sFjZEyoe
         A0hVQusqrby+N4NQqeqoQgoP1PGG/5BG0937nAc5FM7isqybwbKUtmFoIr2ohxyadzTW
         Vb40fyRvKQHV4Zy4P6LujDCVpOlc5Bc97IYkSvu8fkTGUD/X37Dw0cljTh3DAS0UkzyZ
         nKc/HEr4FgQmPLo0ObPQAKETL7+9U9mgP/YD84CaxhT9T9hUkhR8Q9cJDIFljeyd8qP/
         Qq+XhsRQ+XA8u4mPu/HDmDAOfzr3FVsUss/yOIpLIl4/K4hPgf11qpRzA4t6Vwta9ecx
         XSkw==
X-Gm-Message-State: AOJu0YzjbWPwVkukBWuMner9S4oz5szx8CVoW6onN2tPr5QKR55d6ICe
	yLKAh5xdRwhU0pJrZphMJCuyhqe1mlqeD+KvPt5C+GphS2oTUoYHBygw/XQKKTgUh2NXFM5Dnur
	pZUjZ3yc+3IUZelUa6wXQwRfzSyy3UKnT6zQMKlwoY4+KZ3I+THg=
X-Google-Smtp-Source: AGHT+IEkvE73WsO6VxNiMzQRKcichpQ0S5yq4oX4YCoz9gkA/bhb9bedSw6ondJKSGM/J3UbXM7FOp3pqkUFQGtav6Q=
X-Received: by 2002:a05:690c:c82:b0:6e3:15ad:a560 with SMTP id
 00721157ae682-6e5bfc8eac8mr145260437b3.12.1729589505618; Tue, 22 Oct 2024
 02:31:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAF=K0BEbZY47TP06ujgGf1zjphTaDqQbrb=xMnyFAMK2_PTsTQ@mail.gmail.com>
 <CAFche=gpne0TyjavT82gTenCUss2rCp2Q6doHoUpk4tBL4DzYg@mail.gmail.com>
 <CAF=K0BHG2L8xaD3RS4OHGUZKzfvYfR_WyPQMwYxQmtmbNO-Kmw@mail.gmail.com>
 <CAFche=itF-JAbTRKHkcPsLdDL5Ox7yXpDRfHt=0Xy5OhEW8vqQ@mail.gmail.com>
 <CAF=K0BE1h19NZr4z14EnQYWrYAq0ftAEd8cgND57dhSOd8n=jw@mail.gmail.com>
 <CAFche=goVPcWcyVeMP5C4RAms+JQEM9Q91ViNm4y7yoJr5uumw@mail.gmail.com>
 <CAF=K0BGoKmDav99AFBdv_j6P03V7UuHiymMJ0o3WPGiwJ2Q8kA@mail.gmail.com>
 <CAFche=hfGE5HfVeZC=r9PcvA4Ke=jnBJpBoGvFLkFY8Q3D=vCA@mail.gmail.com> <CAF=K0BGqai6roqDefWozcGmFc-6D+Wgns_f4hqmYb8pYYya7bA@mail.gmail.com>
In-Reply-To: <CAF=K0BGqai6roqDefWozcGmFc-6D+Wgns_f4hqmYb8pYYya7bA@mail.gmail.com>
From: Nidhi Panda <nidhi.panda@cyronics.com>
Date: Tue, 22 Oct 2024 15:01:29 +0530
Message-ID: <CAF=K0BHG-hUyKbp4Y50OzBWiZ=yg5gV=V7TdSc22UC97tvJukQ@mail.gmail.com>
To: usrp-users@lists.ettus.com, Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: LZ3VSVGMJEYQEVCCKEKNO7FP4ZPN4IVI
X-Message-ID-Hash: LZ3VSVGMJEYQEVCCKEKNO7FP4ZPN4IVI
X-MailFrom: nidhi.panda@cyronics.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Fwd: Error on adding RFNoC BLOCK - FFT.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LZ3VSVGMJEYQEVCCKEKNO7FP4ZPN4IVI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2741418974895712240=="

--===============2741418974895712240==
Content-Type: multipart/alternative; boundary="00000000000017159106250d70cb"

--00000000000017159106250d70cb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Wade,

I did not realise that I had removed usrp-users mail ID. Now I am able to
add "FFT and Stream splitter" RFNoC core in the design making changes to
the "x3xx_radio_base.yml" script. However, even now I am getting error











*[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.[ERROR]
[RFNOC::GRAPH::DETAIL] The following properties could not be
resolved:[ERROR] [RFNOC::GRAPH::DETAIL] Dirty: RxStreamer#2[INPUT_EDGE:0
atomic_item_size]Traceback (most recent call last):  File
"/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
434, in <module>    main()  File
"/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_stream.py", line
413, in main    tb.start()  File
"/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block.py", line
116, in start    top_block_start_unlocked(self._impl,
max_noutput_items)RuntimeError: RfnocError: ResolveError: Could not resolve
properties.*

How to solve it? I checked previous replies and tried to reduce FFT size
upto 256 which did not help. What else may cause this error?  Following is
the new connection I have used.











*  - { srcblk: _device_,  srcport: _none_, dstblk: radio0, dstport: in_1 }
- { srcblk: _device_,  srcport: _none_, dstblk: radio0, dstport: in_0 }  -
{ srcblk: radio0, srcport: out_0, dstblk: ddc0,   dstport: in_0 }  - {
srcblk: radio0, srcport: out_1, dstblk: ddc0,   dstport: in_1 }  - {
srcblk: ddc0,   srcport: out_0, dstblk: ep0,     dstport: in0  }  - {
srcblk: ddc0,   srcport: out_1, dstblk: Spltr0,dstport: in_0  }  - {
srcblk: Spltr0,   srcport: out_0, dstblk: fft0,   dstport: in_0  }  - {
srcblk: Spltr0,   srcport: out_1, dstblk: ep3,   dstport: in0  }  - {
srcblk: fft0,   srcport: out_0, dstblk: ep1,   dstport: in0  }*



On Sun, Oct 20, 2024 at 5:29=E2=80=AFAM Wade Fife <wade.fife@ettus.com> wro=
te:

> Hi Nidhi,
>
> I don't see anything obviously wrong with the YAML that would prevent it
> from being detected. I assume you were able to detect it before with the
> old bitstream? Can you put the default X300_HG bitstream back on using JT=
AG
> and confirm it's working again? This will confirm if it's an issue with t=
he
> bitstream and not some other issue.
>
> Take a look at the KB article that discusses this issue:
> https://kb.ettus.com/Troubleshooting_X300/X310_Device_Discovery_Issues
>
> By the way, I see you removed the mailing list. You may get more help if
> you keep the mailing list in your replies. I'm not part of the support te=
am.
>
> Thanks,
>
> Wade
>
> On Sat, Oct 19, 2024 at 5:29=E2=80=AFAM Nidhi Panda <nidhi.panda@cyronics=
.com>
> wrote:
>
>> Hi Wade,
>>
>> I am able to generate a .bit file without any error now. I reinstalled
>> the uhd and it worked. But when I program it using JTAG, It is not
>> detecting any device. Any suggestions on what can cause it.? I have
>> reattached my yml script files for your reference.
>>
>> On Wed, Oct 16, 2024 at 7:02=E2=80=AFPM Wade Fife <wade.fife@ettus.com> =
wrote:
>>
>>> To get around the fatal exception, you can try a different build seed a=
s
>>> described in:
>>>
>>>
>>> https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#Why_did_my_FPGA_b=
uild_fail_to_meet_timing_constraints.3F
>>>
>>> You should probably also read that section to understand what could be
>>> causing the timing error. The timing report might give a clue.
>>>
>>> Wade
>>>
>>> On Wed, Oct 16, 2024 at 4:16=E2=80=AFAM Nidhi Panda <nidhi.panda@cyroni=
cs.com>
>>> wrote:
>>>
>>>> Hi Wade,
>>>>
>>>> Thank you for your reply. Yes I had checked the FAQ section and remove=
d
>>>> the replay block. Still I get the same timing constraint error. I want=
 to
>>>> use 2-twinRX daughter cards with both the channels. Therefore, I also
>>>> removed the DUC block and created a fake connection instead of using T=
X,
>>>> same as done for other input ports of the radio.  I have also reduced
>>>> buffer size.  Now I am getting following routing error:
>>>>
>>>> ERROR: [Route 35-9] Router encountered a fatal exception of type
>>>> 'N2rt13HDRTExceptionE' - 'Trying to tool lock on already tool locked a=
rc
>>>> '.
>>>> Resolution: For technical support on this issue, please visit
>>>> http://www.xilinx.com/support
>>>>
>>>>
>>>> This error is also mentioned in *"https://files.ettus.com/manual/md_us=
rp3_build_instructions.html
>>>> <https://files.ettus.com/manual/md_usrp3_build_instructions.html>", *w=
hich
>>>> gives two options as solution
>>>> *1.*  *Use a different Git hash* -
>>>> $ git log
>>>> commit bdada1ed4837e6076a707d0cb62ad4b0a792c7fd (HEAD -> master,
>>>> origin/master, origin/HEAD)
>>>> and
>>>> $ git checkout bdada1ed4837e6076a707d0cb62ad4b0a792c7fd
>>>>
>>>> rerun the rfnoc_image_builder command. Ended up with the same routing
>>>> error.
>>>>
>>>>
>>>> *2. make a non-functional source code change to the HDL to rebuild the
>>>> design.*
>>>> Does it mean adding a space or something in any of the vhdl/verilog
>>>> files.
>>>>
>>>> Is there any other way to resolve this error? I have attached updated
>>>> yml scripts for your reference.
>>>>
>>>> Regards
>>>> Nidhi
>>>>
>>>> On Tue, Oct 15, 2024 at 6:23=E2=80=AFPM Wade Fife <wade.fife@ettus.com=
> wrote:
>>>>
>>>>> The X300 has a smaller FPGA. It could be that the tools are strugglin=
g
>>>>> to meet timing because the design has become crowded. This FAQ has so=
me
>>>>> information on why designs can fail to meet timing.
>>>>>
>>>>>
>>>>> https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#Why_did_my_FPGA=
_build_fail_to_meet_timing_constraints.3F
>>>>>
>>>>> You may need to remove something to make room. For example, are you
>>>>> planning to use the replay block? If not, I suggest removing it. Or p=
erhaps
>>>>> you only need one channel, or it's RX only, etc. In these cases you c=
an
>>>>> remove the unused blocks and connections to reduce the amount of logi=
c on
>>>>> the FPGA, making it easier for the tools to place and route the desig=
n.
>>>>>
>>>>> Wade
>>>>>
>>>>> On Tue, Oct 15, 2024 at 4:04=E2=80=AFAM Nidhi Panda <nidhi.panda@cyro=
nics.com>
>>>>> wrote:
>>>>>
>>>>>> Hi Wade,
>>>>>>
>>>>>> Thank you for your response. Using only one clock source for FFT
>>>>>> solved the multiple driven clock error, however now I am receiving
>>>>>> following error with timing constraint file:
>>>>>>
>>>>>> ERROR: [Builder 0-0] *The design did not satisfy timing constraints.
>>>>>> (*Implementation outputs were still generated)
>>>>>> ERROR: [Common 17-39] 'send_msg_id' failed due to earlier errors.
>>>>>>
>>>>>>     while executing
>>>>>> "send_msg_id {Builder 0-0} error "The design did not satisfy timing
>>>>>> constraints. ${s}""
>>>>>>     invoked from within
>>>>>> "if {! [string match -nocase {*timing constraints are met*} [read
>>>>>> [open $g_output_dir/build.rpt]]]} {
>>>>>>         send_msg_id {Builder 0-0} error "The desi..."
>>>>>>     (procedure "vivado_utils::check_timing_report" line 5)
>>>>>>     invoked from within
>>>>>> "vivado_utils::check_timing_report"
>>>>>>     (procedure "vivado_utils::write_implementation_outputs" line 21)
>>>>>>     invoked from within
>>>>>> "vivado_utils::write_implementation_outputs"
>>>>>>
>>>>>> I have attached an updated yml script file for your reference. Pleas=
e
>>>>>> help me with this error.
>>>>>>
>>>>>> Regards,
>>>>>> Nidhi
>>>>>>
>>>>>> On Tue, Oct 15, 2024 at 3:59=E2=80=AFAM Wade Fife <wade.fife@ettus.c=
om>
>>>>>> wrote:
>>>>>>
>>>>>>> Hi Nidhi,
>>>>>>>
>>>>>>> In the YML file you have the same clock input on the FFT block
>>>>>>> driven from three sources.
>>>>>>>
>>>>>>>     - { srcblk: _device_, srcport: ce, dstblk: fft0, dstport: ce }
>>>>>>>     - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: fft0, dstpor=
t: ce }
>>>>>>>     - { srcblk: _device_, srcport: radio, dstblk: fft0, dstport: ce=
 }
>>>>>>>
>>>>>>>
>>>>>>> You should only have one clock driving it. Most likely you want the
>>>>>>> first one (i.e., use the ce clock to drive the ce input of the FFT)=
.
>>>>>>>
>>>>>>> Wade
>>>>>>>
>>>>>>> On Mon, Oct 14, 2024 at 7:46=E2=80=AFAM Nidhi Panda <
>>>>>>> nidhi.panda@cyronics.com> wrote:
>>>>>>>
>>>>>>>> Hello,
>>>>>>>>
>>>>>>>> I am having USRP X300 device with following tool versions:
>>>>>>>>
>>>>>>>> Vivado 2021.1 - AR76780n,
>>>>>>>> GNU radio version - v3.11.0.0git-820-g2adbd4ea
>>>>>>>> UHD version - UHD_4.7.0.0-84-gbdada1ed
>>>>>>>>
>>>>>>>> By using the *"**https://kb.ettus.com/Getting_Started_with_RFNoC_i=
n_UHD_4.0
>>>>>>>> <https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0>**"*
>>>>>>>> guide, I am trying to add FFT IP in my design.  THis gives followi=
ng error:
>>>>>>>>
>>>>>>>> Starting DRC Task
>>>>>>>> INFO: [DRC 23-27] Running DRC with 8 threads
>>>>>>>> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net
>>>>>>>> bus_clk_gen/inst/CLK_OUT4 has multiple drivers:
>>>>>>>> bus_clk_gen/inst/clkout1_buf/O, bus_clk_gen/inst/clkout4_buf/O, an=
d
>>>>>>>> radio_clk_gen/inst/clkout1_buf/O.
>>>>>>>> INFO: [Project 1-461] DRC finished with 1 Errors
>>>>>>>>
>>>>>>>>
>>>>>>>> I have attached a .yml script file for your reference. Please guid=
e
>>>>>>>> me with the process of adding RFNoC blocks..
>>>>>>>>
>>>>>>>> Regards,
>>>>>>>> NIdhi
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>
>>>>>>>
>>>>>>
>>>>>> --
>>>>>> Regards,
>>>>>> *Nidhi Panda*
>>>>>>
>>>>>> *Cyronics Innovation Labs Pvt Ltd*
>>>>>> #11, Electronics Co-op Estate
>>>>>> Satara Road, Pune - 411009
>>>>>>
>>>>>>
>>>>
>>>> --
>>>> Regards,
>>>> *Nidhi Panda*
>>>>
>>>> *Cyronics Innovation Labs Pvt Ltd*
>>>> #11, Electronics Co-op Estate
>>>> Satara Road, Pune - 411009
>>>>
>>>>
>>
>> --
>> Regards,
>> *Nidhi Panda*
>>
>> *Cyronics Innovation Labs Pvt Ltd*
>> #11, Electronics Co-op Estate
>> Satara Road, Pune - 411009
>>
>>

--=20
Regards,
*Nidhi Panda*

*Cyronics Innovation Labs Pvt Ltd*
#11, Electronics Co-op Estate
Satara Road, Pune - 411009



--=20
Regards,
*Nidhi Panda*

*Cyronics Innovation Labs Pvt Ltd*
#11, Electronics Co-op Estate
Satara Road, Pune - 411009

--00000000000017159106250d70cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Wade,</div><div><br></div><div>I did not realis=
e that I had removed usrp-users mail ID. Now I am able to add &quot;FFT and=
 Stream splitter&quot; RFNoC core in the design making changes to the &quot=
;x3xx_radio_base.yml&quot; script. However, even now I am getting error <br=
></div><div><br></div><div><i>[WARNING] [0/Radio#0] Attempting to set tick =
rate to 0. Skipping.<br>[ERROR] [RFNOC::GRAPH::DETAIL] The following proper=
ties could not be resolved:<br>[ERROR] [RFNOC::GRAPH::DETAIL] Dirty: RxStre=
amer#2[INPUT_EDGE:0 atomic_item_size]<br>Traceback (most recent call last):=
<br>=C2=A0 File &quot;/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split=
_stream.py&quot;, line 434, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=
=C2=A0 File &quot;/home/quasar/gnuradio/gr-uhd/examples/grc/rfnoc_split_str=
eam.py&quot;, line 413, in main<br>=C2=A0 =C2=A0 tb.start()<br>=C2=A0 File =
&quot;/usr/local/lib/python3.8/dist-packages/gnuradio/gr/top_block.py&quot;=
, line 116, in start<br>=C2=A0 =C2=A0 top_block_start_unlocked(self._impl, =
max_noutput_items)<br>RuntimeError: RfnocError: ResolveError: Could not res=
olve properties.</i></div><div><br></div><div>How to solve it? I checked pr=
evious replies and tried to reduce FFT size upto 256 which did not help. Wh=
at else may cause this error?=C2=A0 Following is the new connection I have =
used.=C2=A0 <br></div><div><br></div><div><i>=C2=A0 - { srcblk: _device_, =
=C2=A0srcport: _none_, dstblk: radio0, dstport: in_1 }<br>=C2=A0 - { srcblk=
: _device_, =C2=A0srcport: _none_, dstblk: radio0, dstport: in_0 }<br>=C2=
=A0 - { srcblk: radio0, srcport: out_0, dstblk: ddc0, =C2=A0 dstport: in_0 =
}<br>=C2=A0 - { srcblk: radio0, srcport: out_1, dstblk: ddc0, =C2=A0 dstpor=
t: in_1 }<br><br>=C2=A0 - { srcblk: ddc0, =C2=A0 srcport: out_0, dstblk: ep=
0, =C2=A0 =C2=A0 dstport: in0 =C2=A0}<br>=C2=A0 - { srcblk: ddc0, =C2=A0 sr=
cport: out_1, dstblk: Spltr0,dstport: in_0 =C2=A0}<br><br>=C2=A0 - { srcblk=
: Spltr0, =C2=A0 srcport: out_0, dstblk: fft0, =C2=A0 dstport: in_0 =C2=A0}=
<br>=C2=A0 - { srcblk: Spltr0, =C2=A0 srcport: out_1, dstblk: ep3, =C2=A0 d=
stport: in0 =C2=A0}<br>=C2=A0 - { srcblk: fft0, =C2=A0 srcport: out_0, dstb=
lk: ep1, =C2=A0 dstport: in0 =C2=A0}</i><br></div><div><br></div><div class=
=3D"gmail_quote"><div dir=3D"ltr"><div dir=3D"ltr"><div><p><br></p></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Sun, Oct 20, 2024 at 5:29=E2=80=AFAM Wade Fife &lt;<a href=3D"mailto:wade.=
fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
Hi Nidhi,</div><div><br></div><div>I don&#39;t see anything obviously wrong=
 with the YAML that would prevent it from being detected. I assume you were=
 able to detect it before with the old bitstream? Can=20
you put the default X300_HG bitstream back on using JTAG and confirm=20
it&#39;s working again? This will confirm if it&#39;s an issue with the=20
bitstream and not some other issue.<br></div><div><br></div><div>Take a loo=
k at the KB article that discusses this issue:=C2=A0 <a href=3D"https://kb.=
ettus.com/Troubleshooting_X300/X310_Device_Discovery_Issues" target=3D"_bla=
nk">https://kb.ettus.com/Troubleshooting_X300/X310_Device_Discovery_Issues<=
/a></div><div><br></div><div>By the way, I see you removed the mailing list=
. You may get more help if you keep the mailing list in your replies. I&#39=
;m not part of the support team.<br></div><div><br></div><div>Thanks,<br></=
div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 19, 2024 at 5:29=E2=80=AF=
AM Nidhi Panda &lt;<a href=3D"mailto:nidhi.panda@cyronics.com" target=3D"_b=
lank">nidhi.panda@cyronics.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Wad=
e,</div><div><br></div><div>I am able to generate a .bit file without any e=
rror now. I reinstalled the uhd and it worked. But when I program it using =
JTAG, It is not detecting any device. Any suggestions on what can cause it.=
? I have reattached my yml script files for your reference.<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, Oct 16, 2024 at 7:02=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:wade.fife=
@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>To g=
et around the fatal exception, you can try a different build seed as descri=
bed in:</div><div><br></div><div><a href=3D"https://kb.ettus.com/RFNoC_Freq=
uently_Asked_Questions#Why_did_my_FPGA_build_fail_to_meet_timing_constraint=
s.3F" target=3D"_blank">https://kb.ettus.com/RFNoC_Frequently_Asked_Questio=
ns#Why_did_my_FPGA_build_fail_to_meet_timing_constraints.3F</a></div><div><=
br></div><div>You should probably also read that section to understand what=
 could be causing the timing error. The timing report might give a clue.</d=
iv><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 16, 2024 at 4:16=E2=80=AFA=
M Nidhi Panda &lt;<a href=3D"mailto:nidhi.panda@cyronics.com" target=3D"_bl=
ank">nidhi.panda@cyronics.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Wade,</div><div><br><=
/div><div>Thank you for your reply. Yes I had checked the FAQ section and r=
emoved the replay block. Still I get the same timing constraint error. I wa=
nt to use 2-twinRX daughter cards with both the channels. Therefore, I also=
 removed the DUC block and created a fake connection instead of using TX, s=
ame as done for other input ports of the radio.=C2=A0 I have also reduced b=
uffer size.=C2=A0 Now I am getting following routing error:</div><div><br><=
/div><div>ERROR: [Route 35-9] Router encountered a fatal exception of type =
&#39;N2rt13HDRTExceptionE&#39; - &#39;Trying to tool lock on already tool l=
ocked arc<br>&#39;.<br>Resolution: For technical support on this issue, ple=
ase visit <a href=3D"http://www.xilinx.com/support" target=3D"_blank">http:=
//www.xilinx.com/support</a></div><div><br></div><div><br></div><div>This e=
rror is also mentioned in <b>&quot;<a href=3D"https://files.ettus.com/manua=
l/md_usrp3_build_instructions.html" target=3D"_blank">https://files.ettus.c=
om/manual/md_usrp3_build_instructions.html</a>&quot;, </b>which gives two o=
ptions as solution<b><br></b></div><div><b>1.</b>=C2=A0 <b>Use a different =
Git hash</b> - <br></div><div>$ git log<br>commit bdada1ed4837e6076a707d0cb=
62ad4b0a792c7fd (HEAD -&gt; master, origin/master, origin/HEAD)</div><div>a=
nd=C2=A0</div><div>$ git checkout bdada1ed4837e6076a707d0cb62ad4b0a792c7fd<=
/div><div><br></div><div>rerun the rfnoc_image_builder command. Ended up wi=
th the same routing error.</div><div><br></div><div><br></div><div><b>2. ma=
ke a non-functional source code change to the HDL to rebuild the design.</b=
></div><div>Does it mean adding a space or something in any of the vhdl/ver=
ilog files.</div><div><br></div><div>Is there any other way to resolve this=
 error? I have attached updated yml scripts for your reference.<br></div><d=
iv><br></div><div>Regards</div><div>Nidhi<br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 15, 2024 at =
6:23=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=
=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">The X300=
 has a smaller FPGA. It could be that the tools are struggling to meet timi=
ng because the design has become crowded. This FAQ has some information on =
why designs can fail to meet timing.<br></div><div dir=3D"ltr"><br></div><d=
iv dir=3D"ltr"><a href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_Quest=
ions#Why_did_my_FPGA_build_fail_to_meet_timing_constraints.3F" target=3D"_b=
lank">https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#Why_did_my_FPGA=
_build_fail_to_meet_timing_constraints.3F</a></div><div dir=3D"ltr"><br></d=
iv><div>You may need to remove something to make room. For example, are you=
 planning to use the replay block? If not, I suggest removing it. Or perhap=
s you only need one channel, or it&#39;s RX only, etc. In these cases you c=
an remove the unused blocks and connections to reduce the amount of logic o=
n the FPGA, making it easier for the tools to place and route the design.</=
div><div><br></div><div>Wade<br></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 15, 2024 at 4:04=E2=80=AFAM Nid=
hi Panda &lt;<a href=3D"mailto:nidhi.panda@cyronics.com" target=3D"_blank">=
nidhi.panda@cyronics.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<div>Hi Wade,</div><div><br></div><div>Thank you for your response. Using o=
nly one clock source for FFT solved the multiple driven clock error, howeve=
r now I am receiving following error with timing constraint file:</div><div=
><br></div><div>ERROR: [Builder 0-0] <b>The design did not satisfy timing c=
onstraints. (</b>Implementation outputs were still generated)<br>ERROR: [Co=
mmon 17-39] &#39;send_msg_id&#39; failed due to earlier errors.</div><div><=
br>=C2=A0 =C2=A0 while executing<br>&quot;send_msg_id {Builder 0-0} error &=
quot;The design did not satisfy timing constraints. ${s}&quot;&quot;<br>=C2=
=A0 =C2=A0 invoked from within<br>&quot;if {! [string match -nocase {*timin=
g constraints are met*} [read [open $g_output_dir/build.rpt]]]} {<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 send_msg_id {Builder 0-0} error &quot;The desi...&quo=
t;<br>=C2=A0 =C2=A0 (procedure &quot;vivado_utils::check_timing_report&quot=
; line 5)<br>=C2=A0 =C2=A0 invoked from within<br>&quot;vivado_utils::check=
_timing_report&quot;<br>=C2=A0 =C2=A0 (procedure &quot;vivado_utils::write_=
implementation_outputs&quot; line 21)<br>=C2=A0 =C2=A0 invoked from within<=
br>&quot;vivado_utils::write_implementation_outputs&quot;</div><div><br></d=
iv><div>I have attached an updated yml script file for your reference. Plea=
se help me with this error.</div><div><br></div><div>Regards,</div><div>Nid=
hi<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Tue, Oct 15, 2024 at 3:59=E2=80=AFAM Wade Fife &lt;<a href=
=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div>Hi Nidhi,</div><div><br></div><div>In the YML file you have=
 the same clock input on the FFT block driven from three sources.</div><div=
><br></div><div><pre>    - { srcblk: _device_, srcport: ce, dstblk: fft0, d=
stport: ce }
    - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: fft0, dstport: ce }
    - { srcblk: _device_, srcport: radio, dstblk: fft0, dstport: ce }</pre>=
</div><div><br></div><div>You should only have one clock driving it. Most l=
ikely you want the first one (i.e., use the ce clock to drive the ce input =
of the FFT).</div><div><br></div><div>Wade<br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 14, 2024 at=
 7:46=E2=80=AFAM Nidhi Panda &lt;<a href=3D"mailto:nidhi.panda@cyronics.com=
" target=3D"_blank">nidhi.panda@cyronics.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</d=
iv><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><p=
 dir=3D"auto">I am having USRP X300 device with following tool versions:</p=
>
<p dir=3D"auto">Vivado 2021.1 - AR76780n,<br>
GNU radio version - v3.11.0.0git-820-g2adbd4ea<br>
UHD version - UHD_4.7.0.0-84-gbdada1ed</p></div></div></div></div><pre></pr=
e><div>By using the  <b>&quot;</b><b><a href=3D"https://kb.ettus.com/Gettin=
g_Started_with_RFNoC_in_UHD_4.0" target=3D"_blank">https://kb.ettus.com/Get=
ting_Started_with_RFNoC_in_UHD_4.0</a></b><b>&quot;</b>
 guide, I am trying to add FFT IP in my design.=C2=A0 THis gives following =
error:</div><div><br></div><div>Starting DRC Task<br>INFO: [DRC 23-27] Runn=
ing DRC with 8 threads<br>ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus=
_clk_gen/inst/CLK_OUT4 has multiple drivers: bus_clk_gen/inst/clkout1_buf/O=
, bus_clk_gen/inst/clkout4_buf/O, and radio_clk_gen/inst/clkout1_buf/O.<br>=
INFO: [Project 1-461] DRC finished with 1 Errors</div><div><br></div><div><=
br></div><div>I have attached a .yml script file for your reference. Please=
 guide me with the process of adding RFNoC blocks..</div><div><br></div><di=
v>Regards,</div><div>NIdhi<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr">Regards,<div><b>Nidhi Panda</b></div><div><span style=3D"color:rgb(136,=
136,136)"><font color=3D"#000000"><b><img width=3D"200" height=3D"43" src=
=3D"https://ci3.googleusercontent.com/mail-sig/AIorK4wydcZFixEg0Qccgx_ECRhB=
JmIl6LIH5q6uQDkghvzzXniBb30e7zMVxFMSgyjztcNnZmeLHAueDJVU"></b><br><b>Cyroni=
cs Innovation Labs Pvt Ltd</b><br></font></span></div><div><div><span style=
=3D"color:rgb(136,136,136)"><font color=3D"#000000">#11, Electronics Co-op =
Estate=C2=A0<br>Satara Road, Pune - 411009</font></span></div></div><div><b=
r></div></div></div>
</div>
</div>
</blockquote></div></div>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr">Regards,<div><b>Nidhi Panda</b></div><div><span style=3D"color:rgb(136,=
136,136)"><font color=3D"#000000"><b><img width=3D"200" height=3D"43" src=
=3D"https://ci3.googleusercontent.com/mail-sig/AIorK4wydcZFixEg0Qccgx_ECRhB=
JmIl6LIH5q6uQDkghvzzXniBb30e7zMVxFMSgyjztcNnZmeLHAueDJVU"></b><br><b>Cyroni=
cs Innovation Labs Pvt Ltd</b><br></font></span></div><div><div><span style=
=3D"color:rgb(136,136,136)"><font color=3D"#000000">#11, Electronics Co-op =
Estate=C2=A0<br>Satara Road, Pune - 411009</font></span></div></div><div><b=
r></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr">Regards,<div><b>Nidhi Panda</b></div><div><span style=3D"color:rgb(136,=
136,136)"><font color=3D"#000000"><b><img width=3D"200" height=3D"43" src=
=3D"https://ci3.googleusercontent.com/mail-sig/AIorK4wydcZFixEg0Qccgx_ECRhB=
JmIl6LIH5q6uQDkghvzzXniBb30e7zMVxFMSgyjztcNnZmeLHAueDJVU"></b><br><b>Cyroni=
cs Innovation Labs Pvt Ltd</b><br></font></span></div><div><div><span style=
=3D"color:rgb(136,136,136)"><font color=3D"#000000">#11, Electronics Co-op =
Estate=C2=A0<br>Satara Road, Pune - 411009</font></span></div></div><div><b=
r></div></div></div>
</div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr">Regards,<div><b>Nidhi Panda</b></div><div><span style=3D"color:rgb(136,=
136,136)"><font color=3D"#000000"><b><img width=3D"200" height=3D"43" src=
=3D"https://ci3.googleusercontent.com/mail-sig/AIorK4wydcZFixEg0Qccgx_ECRhB=
JmIl6LIH5q6uQDkghvzzXniBb30e7zMVxFMSgyjztcNnZmeLHAueDJVU"></b><br><b>Cyroni=
cs Innovation Labs Pvt Ltd</b><br></font></span></div><div><div><span style=
=3D"color:rgb(136,136,136)"><font color=3D"#000000">#11, Electronics Co-op =
Estate=C2=A0<br>Satara Road, Pune - 411009</font></span></div></div><div><b=
r></div></div></div>
</div>
</div><br clear=3D"all"><br><span class=3D"gmail_signature_prefix">-- </spa=
n><br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_si=
gnature"><div dir=3D"ltr">Regards,<div><b>Nidhi Panda</b></div><div><span s=
tyle=3D"color:rgb(136,136,136)"><font color=3D"#000000"><b><img width=3D"20=
0" height=3D"43" src=3D"https://ci3.googleusercontent.com/mail-sig/AIorK4wy=
dcZFixEg0Qccgx_ECRhBJmIl6LIH5q6uQDkghvzzXniBb30e7zMVxFMSgyjztcNnZmeLHAueDJV=
U"></b><br><b>Cyronics Innovation Labs Pvt Ltd</b><br></font></span></div><=
div><div><span style=3D"color:rgb(136,136,136)"><font color=3D"#000000">#11=
, Electronics Co-op Estate=C2=A0<br>Satara Road, Pune - 411009</font></span=
></div></div><div><br></div></div></div></div>

--00000000000017159106250d70cb--

--===============2741418974895712240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2741418974895712240==--
