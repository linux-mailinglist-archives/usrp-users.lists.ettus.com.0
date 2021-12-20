Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8E147B11A
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 17:31:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8BDDD384858
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 11:31:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="BfFEvsfc";
	dkim-atps=neutral
Received: from sonic316-11.consmr.mail.bf2.yahoo.com (sonic316-11.consmr.mail.bf2.yahoo.com [74.6.130.121])
	by mm2.emwd.com (Postfix) with ESMTPS id 2BBDA384858
	for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 11:30:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1640017820; bh=P0wH1MXdOflMIyy3YCbsnYJmF/YHMRdhrnW1+Ed764I=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=BfFEvsfcFMqFDxEL4CfU26OMDyGMDOPncfCbxW3/UnLMhRoyMV6De2H513B7sCXS7DUAWCbXI5f6gatqnM4XEVRDVJ4Qu+g/yAFQUyd9Zq+7v76GaVrZGaaA28kIu74CxH+zSi+ya/t1bIlZmMcNdpgTAogpT4wd987JSsAkZZjAQM5ILxmiMWkin+VE8lRLDX3t5XkV9D/pJVoadlaFzX4L/asro/2pQcTNCYKP5MC8iSOIvAxohGzxXfDIOSCFzjPG7nDZjIDFy53GGXr51bmvZ3iw2bQ+Uj4ApeQap9XgD9XNJdWAQOvk+bWjhbPsGhAi0fqWdgzmYbp/ilNTKw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1640017820; bh=Z6eJXaXE5OkaB178QBn0c035AQ/NDJ8jsNlami+jkGk=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=DWshlPJR5eKeZ0xSAjw5MYg7lEmrEfubGQHvF6hWU0A9wlzEVe+ek6b6PtuZ6n6jNjLrsQhkqHbIZ+V1YdsJINhJl5vDznu2rwLdUMH7s1DpB4O4R1gqyghNYa3SWoJsF2GkgLg1W79d57kuEtcy3q2Lk4soILXMJFVZAdwpKPRaBAxBeTu9yTkqDPLo1aYhiQ/iY5WgzJr4eLhnUXxEXQ4TRqn39BX3o5xKlMKbIuHItuE6e955y4aGqrLUqJ9hoygRUzPGlVQQbgFImHuHDVk9/WR6JN/Jib201jEcRnYccu1zOb+OW0Ht0jecxAqwHbIng6OgRHPTIMs5TNMDmQ==
X-YMail-OSG: F_Beq_UVM1lYbn0UVxONLOgU46YMaBM04DaVv2mrgwl48YWp4o1oA3wvgzzBHMr
 nU_ZPooyTZ01XxFwWYt.Y4DyJdeDnnCnRyXePhhTrpqPbqhDKbRRD0Eynsn3LLDxbL8kMRvonvYG
 ukoY.c3OJ.iDe1NwDYsgg5hAX6z5u5b2_2zsHSUlEQNReiQ.pj4NEzvkdU_bHSGaULqlVn3FdnNK
 uMzecPg7l1AI8kfQwhx9LQ6wVL8MxsnIbHBIwLKlSk69aTHJMTPUi7Eb6v1jWpUUBU8jPj4vcf6g
 _tDYP2zL9DeNhp4bXCgcxI1YWDSuK.iyuSx_Ufw5lgKhuN3OjHAR.pSKvX8SjgJrRnc2KVbP2Hhm
 .P4WfIvS6rs6JE8TdQyG7qtcLQu2OjA5x2aVgZcdAl8MYuzB.eWIInPhHf2W749GnfLBawxYEdbv
 SsOP5912ZRW6lBd2wQmt9z.rnYQotfggtm9h0NqF410he0Xpu2mbR1W9jkML9RlNt4Uy8t7jiUJa
 lqRVDZr5BMhZueGQNYXuG9rDc51S812Zz8ZM_iPEtCdzVZRTXaE4QxdDlle2A.7NChyLdbvxZyCX
 PnKC7YOUreq3ney0t2F2vOfHr_2AOsnEKXT7KcTy0jcPur_Iv.NG2TGK9BLPijPHOrsPksljkCDX
 J9dEdi6Kp8FHA3C6fxlY76DDuOuSQCNRsMF3OcGnkBONPUdea0BGGIhovxFC8TsCKOb3R94_PJnL
 SkonQ0t6TvcaqlllWfmovbHJL1wtHMmlQnMcIasXb.T6xT__Q5zg9yGMPz7.scNBRnp6MnI7toaW
 tO4oa4sHt9TWuJPNnGf2tnfGRPHm46MLX.ntYAMYfxJGiAT_QcqIU1BxtDqlMmEY7b7QLYaiRyFT
 lX7tDTkxmDTfXfB.ClRmYi00DngG6bVvA42iTPYnZZEqiH857IjYkWf2M8EPN.etBh9joAoXWrXe
 fzsObtZlKiW.Br512NhftbZnLhMcYmhk7YpqqXmdZUBYxOZOrAkZ1KXbUoCcBthi5MGKg1M2q_U6
 ugCsoxq86F6j45sn7eoDucwhbF2rZDW8yNXxYbFIj1Rra9ZbERJcRTLbL4HKU7gvqkJxyS9hXEha
 .8LbIOh32LBo6kMrBjH4fA6k0w2NHbgknF65kG8cFcRdVbVvH8qy33_ce12osjNFfY6zpjqiSC91
 T.eaxWRby9gU7i9ZsL2W7Cs2Vw6HLANoeU6UHx_E_hX3cj590LKPcrhbB9A57tVLGtL_Nm1UzL3F
 xpgn39OYe1.25TLPdfVpruvEKABNLLcMi4GfbDfE9nXxOsy36ze4TChulpZK0LBGTEQaVulkslCS
 jDA059ELnaV8Lr0jIRNlNg3QQt_WTjjYTZ6zwUnU8vhjmRs5IxpVPcjMDoFDff6rLXbsAcV74GNP
 WiTDFYGIXxPeHG_HRNqI6lY_5JiK.xQbqj64lUc4E3wf1W_JxLCiqIvyBq146MngtID2nFPn89L_
 tMZPF2wv0aKLOU6cnZUMBTQrr3LNetU1O5WWEp4w5Th9NZnAP00sDUd4vzoxGAL2.W4.yfaW0QzN
 HBYyIgAI0Lb6YTfXkF6X_7EGb4N3wF9Snw0eUt1mJ0QrgkVdrKfdNBxtzGSw_ZxSNeHj9fiCcA4y
 om7alJ0t8FhHZ1rUCUSQAJvWyL0sQJ0XUHRLQvzw2B2sNi_o7D1gLzDj1CE_3k834GvLQFMEeUIX
 WeZu63NDcmkKOnoF5ZcrGAl0V8e5DQi9bJf_hgDXNmtNzFlaFMtJhwG9S3RK9U1rbA5VR682xbV0
 iPnzegrQdunXHH8eHACXdo7aY69sjuPPGa0EpIEylScOl_6f_esQSMUO.TrwVyn0RE9TWVk6XCf_
 xSl2pWD_1Yj26aNQpRD5mvzWXYAoGeUGxdVr5xJxYcpEdAIvAGi1HpJz02jqlXmoAuCrl1Lr94FL
 rx13HIVMFZ5VHzHm4hEyoCVIL2d7OhlESqYriGTQ6N7xd7qbve27aH6_bbafBI0TnONNFUhYR6za
 RNJK4skNwAPOc09VTYt2RbcuTEQmRoyZK6p33R6CZSB816B_uyifSgoQVzl2Ifv46wrRLs0uWme2
 WPAk8QpASQws.Jn5xfXSoBP2Y8D.KLWPY1_Eh.oGOWsKqLVvSnLbfyvPPHvwPqw2WHQXFdh.Yjq3
 XhdC9eBC9VxF6f_u7HXKT7..5EifIx8YNKxMEK_yyUVErZgMi2o5Mlm65Cv4UHhmBZdZtas4ZWrU
 gSAqwu.qlXPRohZIg0BNvy.6zQw--
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic316.consmr.mail.bf2.yahoo.com with HTTP; Mon, 20 Dec 2021 16:30:20 +0000
Date: Mon, 20 Dec 2021 16:30:44 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	=?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>,
	Jim Palladino <jim@gardettoengineering.com>
Message-ID: <39823495.1772594.1640017844252@mail.yahoo.com>
In-Reply-To: <MN2PR12MB3312E25B1C5E0666072677C4B87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
References: <CAA=S3PvatKct3yuqkE+=j7n2YXmGJhb2nVzVvWTPyfMMay5BuQ@mail.gmail.com> <692f8895-bd3a-5b14-df32-122893d504f3@ettus.com> <39042870.1585115.1639996294719@mail.yahoo.com> <MN2PR12MB3312D4F731AD1C17F70ACA0EB87B9@MN2PR12MB3312.namprd12.prod.outlook.com> <24577536.1842643.1640004636102@mail.yahoo.com> <MN2PR12MB3312017026FEDC5C5E5D5F46B87B9@MN2PR12MB3312.namprd12.prod.outlook.com> <921829071.1909465.1640014692296@mail.yahoo.com> <MN2PR12MB3312E25B1C5E0666072677C4B87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.19415 YMailNorrin
Message-ID-Hash: FF2FNOPYVUMHBVI6ACGEPRDOL3P5WIMG
X-Message-ID-Hash: FF2FNOPYVUMHBVI6ACGEPRDOL3P5WIMG
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Time different between X310 and N310 USRPs using UHD4.1.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FF2FNOPYVUMHBVI6ACGEPRDOL3P5WIMG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============8190289508467228313=="

--===============8190289508467228313==
Content-Type: multipart/alternative;
	boundary="----=_Part_1772593_794012950.1640017844248"

------=_Part_1772593_794012950.1640017844248
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks Jim. I will only invert 1PPS for X310.
All the best,
Hongwei


    On Monday, 20 December 2021, 15:47:42 GMT, Jim Palladino <jim@gardettoe=
ngineering.com> wrote: =20
=20
 Assuming this is the issue, inverting the 1pps input into only the X310 sh=
ould fix the offset and get everything aligned. If you invert the input to =
both USRP devices, that would just flip the time offset.=C2=A0
Hope that works for you. Happy holidays to you, too.Jim
From: zhou <hwzhou@yahoo.com>
Sent: Monday, December 20, 2021 10:38 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Marcus M=C3=BC=
ller <marcus.mueller@ettus.com>; Jim Palladino <jim@gardettoengineering.com=
>
Subject: Re: [USRP-users] Re: Time different between X310 and N310 USRPs us=
ing UHD4.1.0=C2=A0Hi Jim,
Thanks for your explanation. I got it. Inverter may be a quick solution; ju=
st the duty cycle will become 80% after conversion. I will definitely try i=
t. If not, I will rebuild X310 FPGA as you suggested.
Have a Merry Christmas and happy New Year,
Hongwei


On Monday, 20 December 2021, 13:18:23 GMT, Jim Palladino <jim@gardettoengin=
eering.com> wrote:

Hongwei,
If this is your problem, then "get_time_last_pps()" should report the same =
time between the X310 and N320, unless you happen to ask it (or if you set =
it) during that 200ms window between the 1pps rising and falling edges.
However, like you said, absolute time will be off by 200ms. So, since the f=
alling edge occurs 200ms after the rising edge of the 1pps pulse, the X310 =
will not start at 0s until 200ms after the N320 (or I assume N310). So, if =
you issue the "get_time_now()" command at the same time to both devices, th=
e X310 will be 200ms behind the N320.
To see if this is the issue, you could try to rebuild the X310 FPGA image w=
ith the fix, or you could try inverting the Octoclock output if you have an=
 inverter (to see if the offset shifts the other way). To help us confirm t=
hat this was our issue, we used a function generator instead of the Octoclo=
ck to generate the 1pps to both devices. Then, we varied the duty cycle of =
the 1pps pulse and saw that the time difference between the two devices tra=
cked the duty cycle (the time that the 1pps pulse is high per second).
Also, the way we were setting the time, it actually looked like we were off=
 by 800ms because we'd tell the USRPs to set their time to a specific value=
 after the next pps. But, we'd issue this command right after the rising ed=
ge of the 1PPS pulse. So, this would set the N320 to the time we specified =
1 second later (when the next rising edge occurs). However, the X310 would =
see the falling edge occur 200ms after issuing this command. So, it would s=
et it's time then. So, the way we were doing it, the X310 was actually gett=
ing set 800ms earlier than the N320.
Hope this helps.Jim
From: zhou <hwzhou@yahoo.com>
Sent: Monday, December 20, 2021 7:50 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Marcus M=C3=BC=
ller <marcus.mueller@ettus.com>; Jim Palladino <jim@gardettoengineering.com=
>
Subject: Re: [USRP-users] Time different between X310 and N310 USRPs using =
UHD4.1.0=C2=A0Hi Jim,
Thank you so much for your quick reply. Your finding is very interesting an=
d I believe it is very related to my problem.After some thinking, I am stil=
l having some confusion:Because N320 and X310 USRPs are using different pul=
se edges, their time 0s are actually different by 200ms in universal time, =
but their internal timers should be similar. When querying their time respe=
ctively, we should get similar time - the responses are their internal time=
s. But I am seeing 200ms difference.
Could you please give some comments on this?
Thanks a lot,
Hongwei


On Monday, 20 December 2021, 11:04:09 GMT, Jim Palladino <jim@gardettoengin=
eering.com> wrote:

Hi,
We had the exact same issue a couple months ago between an N320 and an X310=
. The issue is that the N320 (and I'm guessing the N310) detects the 1PPS p=
ulse on the rising edge, as expected. The X310 detects the 1PPS edge on the=
 falling edge. Note that the 1PPS pulse from the Octoclock stays high for a=
bout 200ms, so I'm guessing this is the issue you are seeing.=C2=A0
We ended up making our own custom FPGA build for the X310. We modified the =
file:
"uhd/fpga/usrp3/lib/rfnoc/utils/timekeeper.v".

Originally, the PPS edge detection looked like:
pps_edge<=3D pps_del & ~pps;

We changed it to:pps_edge<=3D ~pps_del & pps;

It would be good if this could get "fixed" in UHD, as it would be nice to n=
ot have to maintain a custom FPGA build. I'm not sure what effect this chan=
ge will have on other USRP FPGA builds that use the same timekeeper.v file.
In any case, I'm guessing this is your problem.
Jim




From: zhou via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, December 20, 2021 5:31 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Marcus M=C3=BC=
ller <marcus.mueller@ettus.com>
Subject: [USRP-users] Time different between X310 and N310 USRPs using UHD4=
.1.0=C2=A0Hi,
I am using mixed types of USRPs in my applications, namely, X310 and N310. =
The signals are timed. I find 0.2-second time difference between these two =
USRPs.Details:Each USRP is controlled by a Linux server;
The same Linux version in all PCs;All USRPs are connected to the same Octoc=
lock;
UHD version is 4.1.0 in Linux servers;All Linux servers are connected to a =
control PC which is the client;The sampling rates are different: 184.32MHz =
in X310 USRP and 245.76MHz in N310 USRP
Control PC sends command to set time 0 after PPS in all USRPs, then query t=
he time in each of them.The time difference between USRPs of the same type =
is small, ~2ms, but the time difference between different types of USRP is =
much bigger, ~0.2s.Times should be impacted by sampling rate; when setting =
timers, no signal is transmitted.
2ms time difference between USRPs could be due to network delay; 200ms can'=
t be because of network. It seems to be due to HW in USRPs. Does this mean =
that X310 and N310 are not synchronized?
Thanks for any comment,
Hongwei


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_1772593_794012950.1640017844248
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpf470fb38yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks Jim. I will only inve=
rt 1PPS for X310.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><di=
v dir=3D"ltr" data-setdir=3D"false">All the best,</div><div dir=3D"ltr" dat=
a-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Hongwei=
<br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydpcc5b922fyahoo_quoted_0203466387" class=3D"ydpcc=
5b922fyahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, 20 December 2021, 15:47:42 GMT, Jim Palladin=
o &lt;jim@gardettoengineering.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydpcc5b922fyiv1209553515"><div dir=3D"ltr">
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
Assuming this is the issue, inverting the 1pps input into only the X310 sho=
uld fix the offset and get everything aligned. If you invert the input to b=
oth USRP devices, that would just flip the time offset.&nbsp;</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
Hope that works for you. Happy holidays to you, too.</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<br clear=3D"none">
</div>
<div id=3D"ydpcc5b922fyiv1209553515appendonsend"></div>
<hr style=3D"display:inline-block;width:98%;" tabindex=3D"-1">
<div id=3D"ydpcc5b922fyiv1209553515yqt40916" class=3D"ydpcc5b922fyiv1209553=
515yqt6493580315"><div dir=3D"ltr" id=3D"ydpcc5b922fyiv1209553515divRplyFwd=
Msg"><font face=3D"Calibri, sans-serif" style=3D"font-size:11pt;" color=3D"=
#000000"><b>From:</b> zhou &lt;hwzhou@yahoo.com&gt;<br clear=3D"none">
<b>Sent:</b> Monday, December 20, 2021 10:38 AM<br clear=3D"none">
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; M=
arcus M=C3=BCller &lt;marcus.mueller@ettus.com&gt;; Jim Palladino &lt;jim@g=
ardettoengineering.com&gt;<br clear=3D"none">
<b>Subject:</b> Re: [USRP-users] Re: Time different between X310 and N310 U=
SRPs using UHD4.1.0</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font=
-size:13px;" class=3D"ydpcc5b922fyiv1209553515x_ydp9ad5d71yahoo-style-wrap"=
>
<div></div>
<div dir=3D"ltr">Hi Jim,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Thanks for your explanation. I got it. Inverter may be a q=
uick solution; just the duty cycle will become 80% after conversion. I will=
 definitely try it. If not, I will rebuild X310 FPGA as you suggested.</div=
>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Have a Merry Christmas and happy New Year,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Hongwei</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div><br clear=3D"none">
</div>
</div>
<div id=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yahoo_quoted_0502683226" cl=
ass=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yahoo_quoted">
<div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;fo=
nt-size:13px;color:#26282a;">
<div>On Monday, 20 December 2021, 13:18:23 GMT, Jim Palladino &lt;jim@garde=
ttoengineering.com&gt; wrote:
</div>
<div><br clear=3D"none">
</div>
<div><br clear=3D"none">
</div>
<div>
<div id=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
Hongwei,</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
If this is your problem, then "get_time_last_pps()" should report the same =
time between the X310 and N320, unless you happen to ask it (or if you set =
it) during that 200ms window between the 1pps rising and falling edges.</di=
v>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
However, like you said, absolute time will be off by 200ms. So, since the f=
alling edge occurs 200ms after the rising edge of the 1pps pulse, the X310 =
will not start at 0s until 200ms after the N320 (or I assume N310). So, if =
you issue the "get_time_now()" command
 at the same time to both devices, the X310 will be 200ms behind the N320.<=
/div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
To see if this is the issue, you could try to rebuild the X310 FPGA image w=
ith the fix, or you could try inverting the Octoclock output if you have an=
 inverter (to see if the offset shifts the other way). To help us confirm t=
hat this was our issue, we used
 a function generator instead of the Octoclock to generate the 1pps to both=
 devices. Then, we varied the duty cycle of the 1pps pulse and saw that the=
 time difference between the two devices tracked the duty cycle (the time t=
hat the 1pps pulse is high per second).</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
Also, the way we were setting the time, it actually looked like we were off=
 by 800ms because we'd tell the USRPs to set their time to a specific value=
 after the next pps. But, we'd issue this command right after the rising ed=
ge of the 1PPS pulse. So, this would
 set the N320 to the time we specified 1 second later (when the next rising=
 edge occurs). However, the X310 would see the falling edge occur 200ms aft=
er issuing this command. So, it would set it's time then. So, the way we we=
re doing it, the X310 was actually
 getting set 800ms earlier than the N320.</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
Hope this helps.</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
Jim</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<br clear=3D"none">
</div>
<div id=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215appendonsend">=
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block;width:98%;">
<div id=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215yqt18463" clas=
s=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215yqt5525963825">
<div dir=3D"ltr" id=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215di=
vRplyFwdMsg"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"=
font-size:11pt;"><b>From:</b> zhou &lt;hwzhou@yahoo.com&gt;<br clear=3D"non=
e">
<b>Sent:</b> Monday, December 20, 2021 7:50 AM<br clear=3D"none">
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; M=
arcus M=C3=BCller &lt;marcus.mueller@ettus.com&gt;; Jim Palladino &lt;jim@g=
ardettoengineering.com&gt;<br clear=3D"none">
<b>Subject:</b> Re: [USRP-users] Time different between X310 and N310 USRPs=
 using UHD4.1.0</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font=
-size:13px;" class=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215x_y=
dpbf121617yahoo-style-wrap">
<div></div>
<div dir=3D"ltr">Hi Jim,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Thank you so much for your quick reply. Your finding is ve=
ry interesting and I believe it is very related to my problem.</div>
<div dir=3D"ltr">After some thinking, I am still having some confusion:</di=
v>
<div dir=3D"ltr">Because N320 and X310 USRPs are using different pulse edge=
s, their time 0s are actually different by 200ms in universal time, but the=
ir internal timers should be similar. When querying their time respectively=
, we should get similar time - the
 responses are their internal times. But I am seeing 200ms difference.</div=
>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Could you please give some comments on this?</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Thanks a lot,<br clear=3D"none">
</div>
<div dir=3D"ltr">Hongwei<br clear=3D"none">
</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div><br clear=3D"none">
</div>
</div>
<div id=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215x_ydp2f3ddc08y=
ahoo_quoted_0577239239" class=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yiv14=
24726215x_ydp2f3ddc08yahoo_quoted">
<div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;fo=
nt-size:13px;color:#26282a;">
<div>On Monday, 20 December 2021, 11:04:09 GMT, Jim Palladino &lt;jim@garde=
ttoengineering.com&gt; wrote:
</div>
<div><br clear=3D"none">
</div>
<div><br clear=3D"none">
</div>
<div>
<div id=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215x_ydp2f3ddc08y=
iv3164486821">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
Hi,</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
We had the exact same issue a couple months ago between an N320 and an X310=
. The issue is that the N320 (and I'm guessing the N310) detects the 1PPS p=
ulse on the rising edge, as expected. The X310 detects the 1PPS edge on the=
 falling edge. Note that the 1PPS
 pulse from the Octoclock stays high for about 200ms, so I'm guessing this =
is the issue you are seeing.&nbsp;</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"font-size:12pt;font-family:Calibri, Helvetica, sans-serif;">=
We ended up making our own custom FPGA build for the X310. We modified the =
file:</span><br clear=3D"none">
<span style=3D"color:rgb(61,60,64);font-family:Calibri, Helvetica, sans-ser=
if;font-size:12pt;text-align:left;background-color:rgb(255,255,255);display=
:inline!important;">"uhd/fpga/usrp3/lib/rfnoc/utils/timekeeper.v".</span><b=
r clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"font-size:12pt;font-family:Calibri, Helvetica, sans-serif;">=
Originally, the PPS edge detection looked like:</span><br clear=3D"none">
<span style=3D"color:rgb(36,41,46);font-family:Calibri, Helvetica, sans-ser=
if;font-size:12pt;">pps_edge&lt;=3D pps_del &amp; ~pps;</span><br clear=3D"=
none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Calibri, Helvetica, sans-ser=
if;font-size:12pt;">We changed it to:</span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);">pps_edge&lt;=3D
 ~pps_del &amp; pps;</span></span><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);">It
 would be good if this could get "fixed" in UHD, as it would be nice to not=
 have to maintain a custom FPGA build. I'm not sure what effect this change=
 will have on other USRP FPGA builds that use the same timekeeper.v file.</=
span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);">In
 any case, I'm guessing this is your problem.</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);">Jim</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-famil=
y:Calibri, Arial, Helvetica, sans-serif;color:rgb(0,0,0);"><span style=3D"m=
argin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;color:r=
gb(36,41,46);"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(36,41,46);font-family:Menlo, Monaco, Consolas, mon=
ospace;font-size:13px;"></span>
<div style=3D"color:rgb(61,60,64);font-family:sans-serif;font-size:14px;bac=
kground-color:rgb(255,255,255);">
<div>
<div style=3D"max-width:100%;padding:8px 0.5em 0px 1.5em;" class=3D"ydpcc5b=
922fyiv1209553515x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821a11y__=
section ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3=
164486821post ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215x_ydp2f3ddc=
08yiv3164486821other--root">
<br clear=3D"none">
</div>
</div>
<div style=3D"display:inline;min-height:0px;z-index:-1;margin:0px;">
<div dir=3D"ltr" style=3D"visibility:hidden;z-index:-1;min-height:160.652px=
;">
<div style=3D"z-index:-1;">
<div style=3D"z-index:-1;min-height:160.652px;">
<div style=3D"min-height:187px;"></div>
</div>
<div style=3D"z-index:-1;min-height:160.652px;">
<div style=3D"min-height:306.133px;"></div>
</div>
</div>
</div>
</div>
</div>
<div style=3D"color:rgb(61,60,64);font-family:sans-serif;font-size:14px;bac=
kground-color:rgb(255,255,255);">
<div>
<div style=3D"max-width:100%;padding:0px 0.5em 0px 1.5em;" class=3D"ydpcc5b=
922fyiv1209553515x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3164486821a11y__=
section ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215x_ydp2f3ddc08yiv3=
164486821post ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215x_ydp2f3ddc=
08yiv3164486821same--user ydpcc5b922fyiv1209553515x_ydpf5f19502yiv142472621=
5x_ydp2f3ddc08yiv3164486821same--root">
<span style=3D"display:table;width:760.415px;padding:0px 8px 0px 5px;margin=
:0px auto;table-layout:fixed;" class=3D"ydpcc5b922fyiv1209553515x_ydpf5f195=
02yiv1424726215x_ydp2f3ddc08yiv3164486821post__content"></span></div>
</div>
</div>
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(61,60,64);font-family:sans-serif;font-size:13.5px;=
text-align:left;display:inline!important;"><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0,0,0);">
<span style=3D"color:rgb(61,60,64);font-family:sans-serif;font-size:13.5px;=
text-align:left;display:inline!important;"><br clear=3D"none">
</span></div>
<div id=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215x_ydp2f3ddc08y=
iv3164486821appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block;width:98%;">
<div id=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215x_ydp2f3ddc08y=
iv3164486821yqt49578" class=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424=
726215x_ydp2f3ddc08yiv3164486821yqt1332618028">
<div dir=3D"ltr" id=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215x_=
ydp2f3ddc08yiv3164486821divRplyFwdMsg">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t;"><b>From:</b> zhou via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br =
clear=3D"none">
<b>Sent:</b> Monday, December 20, 2021 5:31 AM<br clear=3D"none">
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; M=
arcus M=C3=BCller &lt;marcus.mueller@ettus.com&gt;<br clear=3D"none">
<b>Subject:</b> [USRP-users] Time different between X310 and N310 USRPs usi=
ng UHD4.1.0</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font=
-size:13px;" class=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yiv1424726215x_y=
dp2f3ddc08yiv3164486821x_ydpf2317585yahoo-style-wrap">
<div></div>
<div dir=3D"ltr">Hi,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">I am using mixed types of USRPs in my applications, namely=
, X310 and N310. The signals are timed. I find 0.2-second time difference b=
etween these two USRPs.</div>
<div dir=3D"ltr">Details:</div>
<div dir=3D"ltr">Each USRP is controlled by a Linux server;<br clear=3D"non=
e">
</div>
<div dir=3D"ltr">
<div>
<div dir=3D"ltr" style=3D"color:rgb(0,0,0);font-family:Helvetica Neue, Helv=
etica, Arial, sans-serif;">
The same Linux version in all PCs;</div>
<div dir=3D"ltr">All USRPs are connected to the same Octoclock;<br clear=3D=
"none">
</div>
</div>
</div>
<div dir=3D"ltr">UHD version is 4.1.0 in Linux servers;</div>
<div dir=3D"ltr">All Linux servers are connected to a control PC which is t=
he client;</div>
<div dir=3D"ltr">The sampling rates are different: 184.32MHz in X310 USRP a=
nd 245.76MHz in N310 USRP</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Control PC sends command to set time 0 after PPS in all US=
RPs, then query the time in each of them.</div>
<div dir=3D"ltr">The time difference between USRPs of the same type is smal=
l, ~2ms, but the time difference between different types of USRP is much bi=
gger, ~0.2s.</div>
<div dir=3D"ltr">Times should be impacted by sampling rate; when setting ti=
mers, no signal is transmitted.</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">2ms time difference between USRPs could be due to network =
delay; 200ms can't be because of network. It seems to be due to HW in USRPs=
. Does this mean that X310 and N310 are not synchronized?</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Thanks for any comment,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Hongwei</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div id=3D"ydpcc5b922fyiv1209553515x_ydpf5f19502yqt37947" class=3D"ydpcc5b9=
22fyiv1209553515x_ydpf5f19502yqt5525963825">_______________________________=
________________<br clear=3D"none">
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@list=
s.ettus.com" rel=3D"nofollow" target=3D"_blank">
usrp-users@lists.ettus.com</a><br clear=3D"none">
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users=
-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br clear=3D"none">
</div>
</div>
</div>
</div>
</div></div>
</div></div></div>
            </div>
        </div></body></html>
------=_Part_1772593_794012950.1640017844248--

--===============8190289508467228313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8190289508467228313==--
