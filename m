Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2265BAFE3
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 17:06:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C675384E74
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 11:06:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663340786; bh=zYJxPOoW0L7G+u4V9kIejv8dPxZ8hd/i94QhyUczBrk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cMmz9TlK4yaRmmZlCLA3o4bg5MHDKaI/AIGTZVLcB5K43knR5fpDEVOmeo3TC7d9H
	 0RMUfVgJ2S2+2UMupnazTrzmx/QYQWWPRzVe8bPZI3UpydGuMYsRwNu/N6+SoZ21Z4
	 Vob3lH0VWSdDA3KTQk7SCazLC7YNZN8Fx9vPA56C87PSZZDNUfdOdyp1PXoT39OLiw
	 7m9Undh+yrVdz96S/e9V4qiGyR81QxaQ8V5b/ASsQRGBTON9r+UdDhMO1Ha+x3tFXd
	 n+UQ/VdN5SsMaldKuLlXFJPBGHq3VDqt56CRBRYX0/duhMcbfOtUaz0EkhOTWxOQ9T
	 r/ZURD4jrulKQ==
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 4BB3B381526
	for <usrp-users@lists.ettus.com>; Fri, 16 Sep 2022 11:05:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="osooNaxM";
	dkim-atps=neutral
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-1278a61bd57so52493454fac.7
        for <usrp-users@lists.ettus.com>; Fri, 16 Sep 2022 08:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=VjvEjp1zjqQE58jLJW8+AZAgFPh0PJhZhjxx+DS5jlg=;
        b=osooNaxMEh79Zf4iN78chM2LNswYGNBCd8e1cDz0G4Sknsb3IMOwTf9RvTPvmjTifK
         h8kCxAHeSoYe+dlbNri/XBU/7kJj6icDmucmST8/n7gNkjVNytTyRfr2OawlB/Kzwa2f
         jwocdhCqdR+sVMnuh27AVkIBYe/43WJNHWA/re6U5VpZ0xtX7GGr1QqsJ42+9UdrxOfu
         IAXXHdRKS4rsZ3VE3WSHDbaCNlmNq/r4wIAXim/MDx+mhi8/4Z4AKyUkv1XozqWV6b6b
         O3vtcR9lEVlrX+BS4nBVcPBpeRW1PIFdTqOlYp+qm0M7PkN7Uhf9q3iQ+vLe6phWJnjv
         K++A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=VjvEjp1zjqQE58jLJW8+AZAgFPh0PJhZhjxx+DS5jlg=;
        b=e0lXIVMvCgwvIK1GeW2MOo4a92m7jK+lqc99cEHcKWp+MSb620HopjYlm/nmayjjIO
         7hLqG6Qwr+Zl0ZJrgEejzIJt5xdJcQucJwGHflmUPo/dKLoSsJBXGUGqy4Iwgt2eSHyy
         ++pdITAycHYFvYVpJkz9w5adPN4w5Xgw1BLEfCTKoWqvozpFNgo0V0kZi7VdccwIClCA
         wspWzPYh4+EPpKh3C4xvSxZa3HPKSJP3nCZttjTgujuWXrxjlVn+9U1LGnUDvDPAR03M
         bCaoXx+dXEi4+2NMjk605eVJmNnLD3u1Dd2cwAyhdnzplDFxs9txrit0EAv22krY9Lai
         pxsQ==
X-Gm-Message-State: ACrzQf13u65iglM584tEpm3E+c7aeSSNV53liT0VM6BHTrWuRY3CjNc5
	YiW0kVW0pltSPG44pyW0bpjMV5Qv/c+eHdL17lj4jJfATik=
X-Google-Smtp-Source: AMsMyM5q96WsDY7Xane6y8SOkKzmQwgqVjSw+8OmPReGcj6KBTesgqu/tIKYeK4WCf2kQwj9sDnOailvt0Npsj7AYrM=
X-Received: by 2002:a05:6870:15d4:b0:12b:8d8d:1001 with SMTP id
 k20-20020a05687015d400b0012b8d8d1001mr3149915oad.137.1663340709906; Fri, 16
 Sep 2022 08:05:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
 <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
 <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
 <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com>
 <CAL7q81s9KwfTnerWYdOt1fDrG9FDPv5qF743TYqBBSqG1LCNnA@mail.gmail.com>
 <CAJhOL6cTzeJRP8EFS_HjQR2VZP84w+6j8RiRPMczuniQUwcO3w@mail.gmail.com>
 <CAB__hTSe5M-BL4FFaAi=gA3O4AV=jxgBRbENpxGdnHe340ZptA@mail.gmail.com>
 <CAB__hTTsg9LsRScFUmYOywBp9eSg7iYixjLZULa119B+fnO2WQ@mail.gmail.com>
 <CAB__hTQp1SOfvNa6E=qZaV6ORqVHU5MJFTv_vzU0KXZ5Gy9Eww@mail.gmail.com>
 <CAJhOL6etMLth3S6pj-ghemXv18PXz-M0nS=S3Sg0Z3-i6Pq4Yg@mail.gmail.com>
 <CAB__hTQ8Ln5ktvkmx1ThQVQVX1mga0qCX=49YbXJtasG7emYjw@mail.gmail.com>
 <CAJhOL6dLdSL2bWPjdgcfnXL+ednwRQ1QX9tRG3mxgm3+O=486Q@mail.gmail.com>
 <CAJhOL6dUL3S-CJJHLOJTkaj86V-4axM8Ah=4_aKvAcB6WHEHyg@mail.gmail.com>
 <CAEXYVK6MeWsG3CF0LXYaOE0w5RGzAiksG1j-54kNOWYg2ZOfDg@mail.gmail.com>
 <28515f65-c0e2-4489-8563-1887cfac4265@Spark> <CAEXYVK4_xW0rgOKS1vz7R=iZkh_mg4qADnPF0uLALBhxGd71Ng@mail.gmail.com>
 <CAB__hTQ=00nz9Zyh+yfkG_V=h1yzfEDT4Rc+8=d5fxbD-sTrQw@mail.gmail.com> <CAL7q81u+G+W-wA18xUhFGUsQAigCWbn7MYCXvdPv7BxssYGVaA@mail.gmail.com>
In-Reply-To: <CAL7q81u+G+W-wA18xUhFGUsQAigCWbn7MYCXvdPv7BxssYGVaA@mail.gmail.com>
From: Kevin Williams <zs1kwa@gmail.com>
Date: Fri, 16 Sep 2022 17:04:33 +0200
Message-ID: <CAJhOL6ftJ9H6b5E_Jd3EYUZ55Q+_LuaNBCmifScq_cPGYK0wDw@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: X2LFPIKLMHDM7NYQX7KHN4AY43HFV3RT
X-Message-ID-Hash: X2LFPIKLMHDM7NYQX7KHN4AY43HFV3RT
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X2LFPIKLMHDM7NYQX7KHN4AY43HFV3RT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3176702783348554336=="

--===============3176702783348554336==
Content-Type: multipart/alternative; boundary="000000000000278c8705e8ccb053"

--000000000000278c8705e8ccb053
Content-Type: text/plain; charset="UTF-8"

Hi Guys,

No solution yet, so to summarize:

My IP core generates TVALID's after a reset.

These TVALID's are seen in the "client interface" of the RFNoC wrapper.

They are not propagated to the master interface of the "framework
interface"?

The IP core gets the correct input data after a "send_items()" in the
testbench, and its internal AXI signals indicate internal TVALID's over
valid inputs etc.

Somewhat out of ideas.

Regards, Kevin



On Wed, 14 Sept 2022 at 22:32, Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hi Kevin,
>
> To expand on Brian's and Rob's comments, one issue that often comes up is
> user logic bugs related to AXI stream's tvalid / tready signaling. The
> user's logic will pass their test bench but behave strangely or lock up
> when running on hardware. I've found that before running on hardware, you
> should at least test your block with randomized assertion of noc_shell's
> tvalids / treadys. Here is one way to do it based on the rfnoc-example gain
> block (
> https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain.v
> ):
>
>
>   wire m_in_payload_tvalid_int, m_in_payload_tready_int;
>   wire s_out_payload_tvalid_int, s_out_payload_tready_int;
>
>   noc_shell_gain #(
>     .CHDR_W      (CHDR_W),
>     .THIS_PORTID (THIS_PORTID),
>     .MTU         (MTU)
>   ) noc_shell_gain_i (
>     .rfnoc_chdr_clk      (rfnoc_chdr_clk),
>     .rfnoc_ctrl_clk      (rfnoc_ctrl_clk),
>     .rfnoc_chdr_rst      (),
>     .rfnoc_ctrl_rst      (),
>     .rfnoc_core_config   (rfnoc_core_config),
>     .rfnoc_core_status   (rfnoc_core_status),
>     .s_rfnoc_chdr_tdata  (s_rfnoc_chdr_tdata),
>     .s_rfnoc_chdr_tlast  (s_rfnoc_chdr_tlast),
>     .s_rfnoc_chdr_tvalid (s_rfnoc_chdr_tvalid),
>     .s_rfnoc_chdr_tready (s_rfnoc_chdr_tready),
>     .m_rfnoc_chdr_tdata  (m_rfnoc_chdr_tdata),
>     .m_rfnoc_chdr_tlast  (m_rfnoc_chdr_tlast),
>     .m_rfnoc_chdr_tvalid (m_rfnoc_chdr_tvalid),
>     .m_rfnoc_chdr_tready (m_rfnoc_chdr_tready),
>     .s_rfnoc_ctrl_tdata  (s_rfnoc_ctrl_tdata),
>     .s_rfnoc_ctrl_tlast  (s_rfnoc_ctrl_tlast),
>     .s_rfnoc_ctrl_tvalid (s_rfnoc_ctrl_tvalid),
>     .s_rfnoc_ctrl_tready (s_rfnoc_ctrl_tready),
>     .m_rfnoc_ctrl_tdata  (m_rfnoc_ctrl_tdata),
>     .m_rfnoc_ctrl_tlast  (m_rfnoc_ctrl_tlast),
>     .m_rfnoc_ctrl_tvalid (m_rfnoc_ctrl_tvalid),
>     .m_rfnoc_ctrl_tready (m_rfnoc_ctrl_tready),
>     .ctrlport_clk              (ctrlport_clk),
>     .ctrlport_rst              (ctrlport_rst),
>     .m_ctrlport_req_wr         (m_ctrlport_req_wr),
>     .m_ctrlport_req_rd         (m_ctrlport_req_rd),
>     .m_ctrlport_req_addr       (m_ctrlport_req_addr),
>     .m_ctrlport_req_data       (m_ctrlport_req_data),
>     .m_ctrlport_resp_ack       (m_ctrlport_resp_ack),
>     .m_ctrlport_resp_data      (m_ctrlport_resp_data),
>     .axis_data_clk (axis_data_clk),
>     .axis_data_rst (axis_data_rst),
>     .m_in_payload_tdata  (m_in_payload_tdata),
>     .m_in_payload_tkeep  (m_in_payload_tkeep),
>     .m_in_payload_tlast  (m_in_payload_tlast),
>
> *    .m_in_payload_tvalid (m_in_payload_tvalid_int),
> .m_in_payload_tready (m_in_payload_tready_int),*
>     .m_in_context_tdata  (m_in_context_tdata),
>     .m_in_context_tuser  (m_in_context_tuser),
>     .m_in_context_tlast  (m_in_context_tlast),
>     .m_in_context_tvalid (m_in_context_tvalid),
>     .m_in_context_tready (m_in_context_tready),
>     .s_out_payload_tdata  (s_out_payload_tdata),
>     .s_out_payload_tkeep  (s_out_payload_tkeep),
>     .s_out_payload_tlast  (s_out_payload_tlast),
>
> *    .s_out_payload_tvalid (s_out_payload_tvalid_int),
> .s_out_payload_tready (s_out_payload_tready_int),*
>     .s_out_context_tdata  (s_out_context_tdata),
>     .s_out_context_tuser  (s_out_context_tuser),
>     .s_out_context_tlast  (s_out_context_tlast),
>     .s_out_context_tvalid (s_out_context_tvalid),
>     .s_out_context_tready (s_out_context_tready)
>   );
>
>   wire [31:0] rnd;
>   rng rng (
>     .clk(axis_data_clk),
>     .rst(axis_data_rst),
>     .out(rnd));
>
>   assign m_in_payload_tvalid      = m_in_payload_tvalid_int  & rnd[0];
>   assign m_in_payload_tready_int  = m_in_payload_tready      & rnd[0];
>
>   assign s_out_payload_tvalid_int = s_out_payload_tvalid     & rnd[8];
>   assign s_out_payload_tready     = s_out_payload_tready_int & rnd[8];
>
>
> I suggest doing something similar with your block and see if it still
> passes your test bench.
>
> Jonathon
>
> On Wed, Sep 14, 2022 at 3:33 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Kevin,
>> If you run the rfnoc-example gain testbench, it should demonstrate that
>> the testbench is providing a suitable environment for testing your custom
>> logic or core.  Maybe see what is different between that and your
>> testbench.
>>
>> If the problem turns out to be related to the "waiting for TREADY before
>> asserting TVALID" issue presently discussed, it seems this can be solved by
>> adding a buffer stage (register or FIFO) between your logic and the noc
>> shell.
>> Rob
>>
>> On Wed, Sep 14, 2022 at 2:11 PM Brian Padalino <bpadalino@gmail.com>
>> wrote:
>>
>>> On Wed, Sep 14, 2022 at 1:55 PM Kevin Williams <zs1kwa@gmail.com> wrote:
>>>
>>>> Thanks Brian. I think the core gets generated in a way which respects
>>>> back-pressure, so unless a TREADY is seen the core does not generate output
>>>> samples. I have observed this by simulating the core in isolation.
>>>>
>>> On 14 Sep 2022, 17:49 +0200, Brian Padalino <bpadalino@gmail.com>,
>>>> wrote:
>>>>
>>>> I believe the AXI spec says that data should be presented when valid,
>>>> and the tready signal just accepts that data.  You can't rely on tready to
>>>> be asserted before asserting tvalid.
>>>>
>>>> With that being said, I have no idea if this is the source of any of
>>>> your issues.
>>>>
>>>> Brian
>>>>
>>>>
>>> I don't quite understand what you said.  To copy from the AXI protocol
>>> spec (
>>> https://documentation-service.arm.com/static/60d5b244677cf7536a55c23e?token=)
>>> section 2.2:
>>>
>>>   "A Transmitter is not permitted to wait until TREADY is asserted
>>> before asserting TVALID. Once TVALID is
>>> asserted, it must remain asserted until the handshake occurs.
>>>
>>>   A Receiver is permitted to wait for TVALID to be asserted before
>>> asserting TREADY. It is permitted that a
>>> Receiver asserts and deasserts TREADY without TVALID being asserted."
>>>
>>> Waiting for TREADY to be asserted is invalid as a transmitter.
>>>
>>> Is something not compliant and causing deadlock?
>>>
>>> Brian
>>>
>>

-- 
Kevin Williams

--000000000000278c8705e8ccb053
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Guys,<div><br></div><div>No solution yet, so to summari=
ze:</div><div><br></div><div>My IP core generates TVALID&#39;s after a rese=
t.</div><div><br></div><div>These TVALID&#39;s are seen in the &quot;client=
 interface&quot; of the RFNoC wrapper.</div><div><br></div><div>They are no=
t propagated=C2=A0to the master interface of the &quot;framework interface&=
quot;?</div><div><br></div><div>The IP core gets the correct input data aft=
er a &quot;send_items()&quot; in the testbench, and its internal AXI signal=
s indicate internal TVALID&#39;s over valid inputs etc.</div><div><br></div=
><div>Somewhat out of ideas.</div><div><br></div><div>Regards, Kevin</div><=
div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, 14 Sept 2022 at 22:32, Jonathon Pendl=
um &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com">jonathon.pendlum@ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">Hi Kevin,<div><br></div><div>To expand on Brian&#39;s =
and Rob&#39;s comments, one issue that often comes up is user logic bugs re=
lated to AXI stream&#39;s tvalid / tready signaling. The user&#39;s logic w=
ill pass their test bench but behave strangely or lock up when running on h=
ardware. I&#39;ve found that before running on hardware, you should at leas=
t test your block with randomized=C2=A0assertion of noc_shell&#39;s tvalids=
 / treadys. Here is one way to do it based on the rfnoc-example gain block =
(<a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples/=
rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain.v" target=3D"_blank">h=
ttps://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example=
/fpga/rfnoc_block_gain/rfnoc_block_gain.v</a>):<br><br><br><font face=3D"mo=
nospace">=C2=A0 wire=C2=A0</font><span style=3D"font-family:monospace">m_in=
_payload_tvalid_int,=C2=A0</span><span style=3D"font-family:monospace">m_in=
_payload_tready_int</span><span style=3D"font-family:monospace">;</span></d=
iv><div><font face=3D"monospace">=C2=A0 wire=C2=A0</font><span style=3D"fon=
t-family:monospace">s_out_payload_tvalid_int</span><span style=3D"font-fami=
ly:monospace">,=C2=A0</span><span style=3D"font-family:monospace">s_out_pay=
load_tready_int;</span><span style=3D"font-family:monospace"><br></span></d=
iv><div><span style=3D"font-family:monospace"><br></span></div><div><font f=
ace=3D"monospace">=C2=A0 noc_shell_gain #(<br>=C2=A0 =C2=A0 .CHDR_W =C2=A0 =
=C2=A0 =C2=A0(CHDR_W),<br>=C2=A0 =C2=A0 .THIS_PORTID (THIS_PORTID),<br>=C2=
=A0 =C2=A0 .MTU =C2=A0 =C2=A0 =C2=A0 =C2=A0 (MTU)<br>=C2=A0 ) noc_shell_gai=
n_i (<br>=C2=A0 =C2=A0 .rfnoc_chdr_clk =C2=A0 =C2=A0 =C2=A0(rfnoc_chdr_clk)=
,<br>=C2=A0 =C2=A0 .rfnoc_ctrl_clk =C2=A0 =C2=A0 =C2=A0(rfnoc_ctrl_clk),<br=
>=C2=A0 =C2=A0 .rfnoc_chdr_rst =C2=A0 =C2=A0 =C2=A0(),<br>=C2=A0 =C2=A0 .rf=
noc_ctrl_rst =C2=A0 =C2=A0 =C2=A0(),<br>=C2=A0 =C2=A0 .rfnoc_core_config =
=C2=A0 (rfnoc_core_config),<br>=C2=A0 =C2=A0 .rfnoc_core_status =C2=A0 (rfn=
oc_core_status),<br>=C2=A0 =C2=A0 .s_rfnoc_chdr_tdata =C2=A0(s_rfnoc_chdr_t=
data),<br>=C2=A0 =C2=A0 .s_rfnoc_chdr_tlast =C2=A0(s_rfnoc_chdr_tlast),<br>=
=C2=A0 =C2=A0 .s_rfnoc_chdr_tvalid (s_rfnoc_chdr_tvalid),<br>=C2=A0 =C2=A0 =
.s_rfnoc_chdr_tready (s_rfnoc_chdr_tready),<br>=C2=A0 =C2=A0 .m_rfnoc_chdr_=
tdata =C2=A0(m_rfnoc_chdr_tdata),<br>=C2=A0 =C2=A0 .m_rfnoc_chdr_tlast =C2=
=A0(m_rfnoc_chdr_tlast),<br>=C2=A0 =C2=A0 .m_rfnoc_chdr_tvalid (m_rfnoc_chd=
r_tvalid),<br>=C2=A0 =C2=A0 .m_rfnoc_chdr_tready (m_rfnoc_chdr_tready),<br>=
=C2=A0 =C2=A0 .s_rfnoc_ctrl_tdata =C2=A0(s_rfnoc_ctrl_tdata),<br>=C2=A0 =C2=
=A0 .s_rfnoc_ctrl_tlast =C2=A0(s_rfnoc_ctrl_tlast),<br>=C2=A0 =C2=A0 .s_rfn=
oc_ctrl_tvalid (s_rfnoc_ctrl_tvalid),<br>=C2=A0 =C2=A0 .s_rfnoc_ctrl_tready=
 (s_rfnoc_ctrl_tready),<br>=C2=A0 =C2=A0 .m_rfnoc_ctrl_tdata =C2=A0(m_rfnoc=
_ctrl_tdata),<br>=C2=A0 =C2=A0 .m_rfnoc_ctrl_tlast =C2=A0(m_rfnoc_ctrl_tlas=
t),<br>=C2=A0 =C2=A0 .m_rfnoc_ctrl_tvalid (m_rfnoc_ctrl_tvalid),<br>=C2=A0 =
=C2=A0 .m_rfnoc_ctrl_tready (m_rfnoc_ctrl_tready),<br>=C2=A0 =C2=A0 .ctrlpo=
rt_clk =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(ctrlport_clk),<br>=
=C2=A0 =C2=A0 .ctrlport_rst =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(ctrlport_rst),<br>=C2=A0 =C2=A0 .m_ctrlport_req_wr =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 (m_ctrlport_req_wr),<br>=C2=A0 =C2=A0 .m_ctrlport_req_rd =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 (m_ctrlport_req_rd),<br>=C2=A0 =C2=A0 .m_ctrlport_req_add=
r =C2=A0 =C2=A0 =C2=A0 (m_ctrlport_req_addr),<br>=C2=A0 =C2=A0 .m_ctrlport_=
req_data =C2=A0 =C2=A0 =C2=A0 (m_ctrlport_req_data),<br>=C2=A0 =C2=A0 .m_ct=
rlport_resp_ack =C2=A0 =C2=A0 =C2=A0 (m_ctrlport_resp_ack),<br>=C2=A0 =C2=
=A0 .m_ctrlport_resp_data =C2=A0 =C2=A0 =C2=A0(m_ctrlport_resp_data),<br>=
=C2=A0 =C2=A0 .axis_data_clk (axis_data_clk),<br>=C2=A0 =C2=A0 .axis_data_r=
st (axis_data_rst),<br>=C2=A0 =C2=A0 .m_in_payload_tdata =C2=A0(m_in_payloa=
d_tdata),<br>=C2=A0 =C2=A0 .m_in_payload_tkeep =C2=A0(m_in_payload_tkeep),<=
br>=C2=A0 =C2=A0 .m_in_payload_tlast =C2=A0(m_in_payload_tlast),<br><b>=C2=
=A0 =C2=A0 .m_in_payload_tvalid (m_in_payload_tvalid_int),<br>=C2=A0 =C2=A0=
 .m_in_payload_tready (m_in_payload_tready_int),</b><br>=C2=A0 =C2=A0 .m_in=
_context_tdata =C2=A0(m_in_context_tdata),<br>=C2=A0 =C2=A0 .m_in_context_t=
user =C2=A0(m_in_context_tuser),<br>=C2=A0 =C2=A0 .m_in_context_tlast =C2=
=A0(m_in_context_tlast),<br>=C2=A0 =C2=A0 .m_in_context_tvalid (m_in_contex=
t_tvalid),<br>=C2=A0 =C2=A0 .m_in_context_tready (m_in_context_tready),<br>=
=C2=A0 =C2=A0 .s_out_payload_tdata =C2=A0(s_out_payload_tdata),<br>=C2=A0 =
=C2=A0 .s_out_payload_tkeep =C2=A0(s_out_payload_tkeep),<br>=C2=A0 =C2=A0 .=
s_out_payload_tlast =C2=A0(s_out_payload_tlast),<br><b>=C2=A0 =C2=A0 .s_out=
_payload_tvalid (s_out_payload_tvalid_int),<br>=C2=A0 =C2=A0 .s_out_payload=
_tready (s_out_payload_tready_int),</b><br>=C2=A0 =C2=A0 .s_out_context_tda=
ta =C2=A0(s_out_context_tdata),<br>=C2=A0 =C2=A0 .s_out_context_tuser =C2=
=A0(s_out_context_tuser),<br>=C2=A0 =C2=A0 .s_out_context_tlast =C2=A0(s_ou=
t_context_tlast),<br>=C2=A0 =C2=A0 .s_out_context_tvalid (s_out_context_tva=
lid),<br>=C2=A0 =C2=A0 .s_out_context_tready (s_out_context_tready)<br>=C2=
=A0 );</font></div><div><span style=3D"font-family:monospace"><br></span></=
div><div><span style=3D"font-family:monospace">=C2=A0 wire [31:0] rnd;</spa=
n></div><div><span style=3D"font-family:monospace">=C2=A0 rng rng (</span><=
/div><div><font face=3D"monospace">=C2=A0 =C2=A0 .clk(</font><span style=3D=
"font-family:monospace">axis_data_clk</span><span style=3D"font-family:mono=
space">),</span></div><div><font face=3D"monospace">=C2=A0 =C2=A0 .rst(</fo=
nt><span style=3D"font-family:monospace">axis_data_rst</span><span style=3D=
"font-family:monospace">),</span></div><div><span style=3D"font-family:mono=
space">=C2=A0 =C2=A0 .out(rnd)</span><font face=3D"monospace">);</font><br>=
</div><div><br></div><div><font face=3D"monospace">=C2=A0 assign=C2=A0</fon=
t><span style=3D"font-family:monospace">m_in_payload_tvalid=C2=A0 =C2=A0 =
=C2=A0 =3D=C2=A0</span><span style=3D"font-family:monospace">m_in_payload_t=
valid_int=C2=A0 &amp; rnd[0];</span></div><div><font face=3D"monospace">=C2=
=A0 assign=C2=A0</font><span style=3D"font-family:monospace">m_in_payload_t=
ready_int=C2=A0 =3D=C2=A0</span><span style=3D"font-family:monospace">m_in_=
payload_tready=C2=A0 =C2=A0 =C2=A0 &amp; rnd[0];</span><span style=3D"font-=
family:monospace"><br></span></div><div><span style=3D"font-family:monospac=
e"><br></span></div><div><div><font face=3D"monospace">=C2=A0 assign=C2=A0<=
/font><span style=3D"font-family:monospace">s_out_payload_tvalid_int</span>=
<span style=3D"font-family:monospace">=C2=A0=3D=C2=A0</span><span style=3D"=
font-family:monospace">s_out_payload_tvalid</span><span style=3D"font-famil=
y:monospace">=C2=A0 =C2=A0 =C2=A0&amp; rnd[8];</span></div><div><font face=
=3D"monospace">=C2=A0 assign=C2=A0</font><span style=3D"font-family:monospa=
ce">s_out_payload_tready=C2=A0 =C2=A0=C2=A0</span><span style=3D"font-famil=
y:monospace">=C2=A0=3D=C2=A0</span><span style=3D"font-family:monospace">s_=
out_payload_tready_int</span><span style=3D"font-family:monospace">=C2=A0&a=
mp; rnd[8];</span></div></div><div><font face=3D"monospace"><br></font></di=
v><div><br></div><div><font face=3D"arial, sans-serif">I suggest doing some=
thing similar with your block and see if it still passes your test bench.</=
font></div><div><font face=3D"arial, sans-serif"><br></font></div><div><fon=
t face=3D"arial, sans-serif">Jonathon</font></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 14, 2022 at 3=
:33 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank"=
>rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">Hi Kevin,<div>If you run the rfnoc-example=
 gain testbench, it should demonstrate that the testbench is providing a su=
itable environment for testing your custom logic or core.=C2=A0 Maybe see w=
hat is different between that and your testbench.=C2=A0=C2=A0</div><div><br=
></div><div>If the problem turns out to be related to the &quot;waiting for=
 TREADY=C2=A0before asserting TVALID&quot; issue presently discussed, it se=
ems this can be solved by adding a buffer stage (register or FIFO) between =
your logic and the noc shell.</div><div>Rob</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 14, 2022 at 2:=
11 PM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_=
blank">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"></div><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 14, 202=
2 at 1:55 PM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=
=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">



<div>
<div name=3D"messageBodySection">
<div dir=3D"auto">Thanks Brian. I think the core gets generated in a way wh=
ich respects back-pressure, so unless a TREADY is seen the core does not ge=
nerate output samples. I have observed this by simulating the core in isola=
tion.</div></div></div></blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div><div name=3D"messageBodySection">
</div>
<div name=3D"messageReplySection">On 14 Sep 2022, 17:49 +0200, Brian Padali=
no &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank">bpadalino@g=
mail.com</a>&gt;, wrote:<br>
<blockquote type=3D"cite" style=3D"border-left:thin solid grey;margin:5px;p=
adding-left:10px">
<div dir=3D"ltr">I believe the AXI spec says that data should be presented =
when valid, and the tready signal just accepts that data.=C2=A0 You can&#39=
;t rely on tready to be asserted before asserting tvalid.
<div><br></div>
<div>With that being said, I have no idea if this is the source of any of y=
our issues.</div>
<div><br></div>
<div>Brian</div></div></blockquote></div></div></blockquote><div><br></div>=
<div>I don&#39;t quite understand what you said.=C2=A0 To copy from the AXI=
 protocol spec (<a href=3D"https://documentation-service.arm.com/static/60d=
5b244677cf7536a55c23e?token=3D" target=3D"_blank">https://documentation-ser=
vice.arm.com/static/60d5b244677cf7536a55c23e?token=3D</a>) section 2.2:</di=
v><div><br></div><div>=C2=A0 &quot;A Transmitter is not permitted to wait u=
ntil TREADY is asserted before asserting TVALID. Once TVALID is</div>assert=
ed, it must remain asserted until the handshake occurs.</div><div class=3D"=
gmail_quote"><br>=C2=A0 A Receiver is permitted to wait for TVALID to be as=
serted before asserting TREADY. It is permitted that a<br>Receiver asserts =
and deasserts TREADY without TVALID being asserted.&quot;</div><div class=
=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Waiting for TREADY to=
 be asserted is invalid as a transmitter.</div><div class=3D"gmail_quote"><=
br></div><div class=3D"gmail_quote">Is something not compliant and causing =
deadlock?</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quo=
te">Brian</div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Kevin Williams</div>

--000000000000278c8705e8ccb053--

--===============3176702783348554336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3176702783348554336==--
