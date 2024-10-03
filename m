Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5897898E78D
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 02:09:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71AA538598B
	for <lists+usrp-users@lfdr.de>; Wed,  2 Oct 2024 20:09:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727914152; bh=yNul1g0O/9uCEeRACV38wrnbApJgT3ieCgZ4zbkmQ88=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=N/CB1tUHiQk3hSpNnLLjWuXd4GZ2OHYMzEuOhozXkrGp9oBMWqj1vIbsPWB4SNY/5
	 KK1niJmeuu6BaXuvi8XH5tfswSekVDl/VBX44e9D0jZqBlmkicXD0LhC+jjRvammDR
	 9ZzKqohGXvRSPbk658QcoVzFD9VH8BJtM6e9rJviufZu0dkMFRU37NrXnEV9LGRddM
	 BZL3hmVmwoNpM70PF7oTXbTS3BS61besSLqBoUR7lyl5gROsZFWFyUnGy2sU9KBb98
	 OvaAaWEtURkah1+dgSenct55zLzL5uR8VOE79RDUgr3koGF5qHHM3WXQC0Wh0Xy7Qw
	 VCjTR3Q0ll+4Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F50C38590B
	for <usrp-users@lists.ettus.com>; Wed,  2 Oct 2024 20:08:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727914095; bh=mfk4lXrBOYuGWKgeVoiNqta+sYPKpSn/b5/pflaXUus=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ufWYuYVmZkYe5phColsQQM78oTfAOZsapKLKMkHGCH9eP7l8vW16IvKVi5f4VS0Tv
	 +gPeTgiKXlgZBqFaJLKSPXI/S/pHwD6I9YVZQhrK3yd5N/7WqD/BF1wOYHvHqqKX8B
	 BQ0W5hWnUXP7yGhJTji5PdJMI7uUdvpxG0sDHW3bNJYd7dgVmt5CH3zmOR8AS0Ve0o
	 W6eYyj6IQOIBa0bb+iH+urokFWpPpJRh5KlTZH5fgkCMXFYhyh3eJlTrADKqMRgdJe
	 GH1ulQTsVxV2qyrKa1tpEsMCsi2ElNA6zW8ozqNT/5mi61mToFThVhAqyX8IeUR2cg
	 CzbQarkuWDifw==
Date: Thu, 3 Oct 2024 00:08:15 +0000
To: usrp-users@lists.ettus.com
Message-ID: <b1YtrmPd3RxWXd1CWtUiBdoSKO9c3EXoVd33KLw83U@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e16da4a1-c2b1-42b1-85cd-b38c251bc94f@gmail.com
MIME-Version: 1.0
Message-ID-Hash: QEKNMJGX4MGRRB5LERG2T73YJEEDQD6T
X-Message-ID-Hash: QEKNMJGX4MGRRB5LERG2T73YJEEDQD6T
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QEKNMJGX4MGRRB5LERG2T73YJEEDQD6T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============6591633978259455469=="

This is a multi-part message in MIME format.

--===============6591633978259455469==
Content-Type: multipart/alternative;
 boundary="b1_b1YtrmPd3RxWXd1CWtUiBdoSKO9c3EXoVd33KLw83U"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_b1YtrmPd3RxWXd1CWtUiBdoSKO9c3EXoVd33KLw83U
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus!=C2=A0 =C2=A0

Hahaha=C2=A0 I thoroughly enjoyed the rant!=C2=A0 =C2=A0 I think you are =
correct about Make and its variations.=C2=A0 =C2=A0Indispensable seems an=
 understatement for something that is so pervasive in software developmen=
t.=C2=A0 =C2=A0As I mentioned, I am primarily an FPGA developer.=C2=A0 =C2=
=A0At some point, when the Zynq and ZynqMP SoCs were released, the softwa=
re community seemed to (initially, at least) scatter when they saw "FPGA"=
 in the name, and I found myself inadvertently "volun-told" to be respons=
ible for building Linux releases with custom drivers for my hardware. :-)=
=C2=A0 It was horrifying! :-)

You don't see Make involved in FPGA builds as frequently as you'd expect,=
 considering the popularity of SoCs these days.=C2=A0 =C2=A0As a self-pro=
claimed "Crusty Old Hardware Guy", I'm not permitted to actually say out =
loud that I think Make is a good addition to the FPGA development flow...=
 ;-)=C2=A0 ...but I have to admit that I've been pleasantly surprised by =
how easily all aspects of a build can be automated, once the initial setu=
p is done.

I think what keeps me from jumping in completely, is that many aspects of=
 FPGA development are still very much grounded in Hardware Development pr=
inciples and techniques, processes in which a GUI is supremely helpful.=C2=
=A0 =C2=A0At the end of the day, I still need to see a schematic, block d=
iagram, or wave-forms.=C2=A0 =C2=A0To that end, however, with the x410 UH=
D build, I was impressed by how straight-forward it was to modify the Mak=
e files and build Tcl scripts to create the project, build the IP, and op=
en it in the GUI for me to inspect and continue in my normal FPGA-dev flo=
w.

Hahaha=C2=A0 =C2=A0I tried to keep this short, but I apparently reply to =
rants with...more ranting.=C2=A0 =C2=A0:-)

Thanks for the reply!

Mike

--b1_b1YtrmPd3RxWXd1CWtUiBdoSKO9c3EXoVd33KLw83U
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus!&nbsp; &nbsp;</p><p>Hahaha&nbsp; I thoroughly enjoyed the rant=
!&nbsp; &nbsp; I think you are correct about Make and its variations.&nbsp;=
 &nbsp;Indispensable seems an understatement for something that is so perva=
sive in software development.&nbsp; &nbsp;As I mentioned, I am primarily an=
 FPGA developer.&nbsp; &nbsp;At some point, when the Zynq and ZynqMP SoCs w=
ere released, the software community seemed to (initially, at least) scatte=
r when they saw "FPGA" in the name, and I found myself inadvertently "volun=
-told" to be responsible for building Linux releases with custom drivers fo=
r my hardware. :-)&nbsp; It was horrifying! :-)</p><p>You don't see Make in=
volved in FPGA builds as frequently as you'd expect, considering the popula=
rity of SoCs these days.&nbsp; &nbsp;As a self-proclaimed "Crusty Old Hardw=
are Guy", I'm not permitted to actually say out loud that I think Make is a=
 good addition to the FPGA development flow... ;-)&nbsp; ...but I have to a=
dmit that I've been pleasantly surprised by how easily all aspects of a bui=
ld can be automated, once the initial setup is done.</p><p>I think what kee=
ps me from jumping in completely, is that many aspects of FPGA development =
are still very much grounded in Hardware Development principles and techniq=
ues, processes in which a GUI is supremely helpful.&nbsp; &nbsp;At the end =
of the day, I still need to see a schematic, block diagram, or wave-forms.&=
nbsp; &nbsp;To that end, however, with the x410 UHD build, I was impressed =
by how straight-forward it was to modify the Make files and build Tcl scrip=
ts to create the project, build the IP, and open it in the GUI for me to in=
spect and continue in my normal FPGA-dev flow.</p><p>Hahaha&nbsp; &nbsp;I t=
ried to keep this short, but I apparently reply to rants with...more rantin=
g.&nbsp; &nbsp;:-)</p><p>Thanks for the reply!</p><p>Mike</p>

--b1_b1YtrmPd3RxWXd1CWtUiBdoSKO9c3EXoVd33KLw83U--

--===============6591633978259455469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6591633978259455469==--
