Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F802DE992
	for <lists+usrp-users@lfdr.de>; Fri, 18 Dec 2020 20:08:58 +0100 (CET)
Received: from [::1] (port=45282 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kqL7X-000176-BB; Fri, 18 Dec 2020 14:08:55 -0500
Received: from mail-ot1-f48.google.com ([209.85.210.48]:41627)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kqL7T-00011d-5L
 for usrp-users@lists.ettus.com; Fri, 18 Dec 2020 14:08:51 -0500
Received: by mail-ot1-f48.google.com with SMTP id x13so2893299oto.8
 for <usrp-users@lists.ettus.com>; Fri, 18 Dec 2020 11:08:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=NadW/mwDg5TQ2/BtMA2s9P1bHB+mOWZg7YmZiBTqeFI=;
 b=PfYTdSIilu1y59A1Rci1BBm1hDCVxiSn119VLx+TItQzfxNGsdgNrogh7ML97e31cK
 0iKEY9sa28/C5RZQPa9TNphcF9CbceK9YUwOxMweHgSYZDVi6J0YGJGr39yOQ1tHRX1K
 gs89gesNaGbGaGhDVdYiibXo8aUy6y5LG7UIm91aqoAHQlX7lBVGs5PUcNF9yn/ewheg
 CivZA10Jj85H8gwfjYGvZdmVldLFcAlG3ULIicu+ApSLUOgEu+Oo6UBpE1YexGlc/wTN
 FYYW7HkzESdDNREJVUUYhzijClzRzfkgucrQtSpREN9FSW9Bnkv1IHYEnx6+lQoqAdt4
 RuLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=NadW/mwDg5TQ2/BtMA2s9P1bHB+mOWZg7YmZiBTqeFI=;
 b=aAa76KluR66tNvpmmwce7NYZtqlNGNcXZUS+T9VJTqTabEwrTxoFb6VnLlrtlgiYzo
 0DiDZALBLZZs1c99nIHIG9WUxfSQLR/nG7DfEgTC+JkJJZMP+pyRcetN2VpUcyBcQMS2
 vZKLTQ+CaGzqIUcq9xSlicPcJEROMw+W9kQpLWeqqAiRhiuYZ/x6X+WbKMOZq4ltI4KX
 yhniL5LmEc3i3GPEjK0hyzQMWw3uCj8YEWCmZH4Fh75yE/chn0zJcIiIebVwuYIHwvF6
 ai0d3qzCvbuwnaWdGQ0UHVufLqU3bKNauFMeevn8/kuyU1o21/sWu93zLrGzexLiaolJ
 MAcA==
X-Gm-Message-State: AOAM531yvYu5DU/lLqLcJrWuIkmTWbMeFXPofq+GZ9LcbIhbSww5BqRH
 v+n+pk1ZarVSr9vnWIwurZM/Tm/+Y2wBUpDCICl0fb5XWoemPfY8
X-Google-Smtp-Source: ABdhPJzVnWHdK1kVvVClaWxLmHGtPtrh6OSSnP9lKKThNrD9Rdv5fkLlvFTewAy8o+LgIW6Ja4zGKSRKJfIReVrNn7Y=
X-Received: by 2002:a9d:6a97:: with SMTP id l23mr3935528otq.58.1608318489926; 
 Fri, 18 Dec 2020 11:08:09 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 18 Dec 2020 14:07:59 -0500
Message-ID: <CAB__hTQcN+WH-ykj70Avm=3VZr7nwMTRGsBDjnyMCCi6NuZTRQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="000000000000478d1505b6c1d4f7"
Subject: [USRP-users] UHD 4.0 Time Spec bug?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
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

--000000000000478d1505b6c1d4f7
Content-Type: multipart/alternative; boundary="000000000000478d1305b6c1d4f5"

--000000000000478d1305b6c1d4f5
Content-Type: text/plain; charset="UTF-8"

Hi,
I am seeing something strange with timespecs.  I am trying to test a single
RFNoC block on a device similar to the way in which a testbench tests a
single block in simulation.  So, my rfnoc graph looks like "host_tx =>
block => host_rx". The issue I'm seeing is that the timespec in the rx
metadata is a "rounded" version of what I put in the tx metadata.

Unfortunately, it is not trivial to demonstrate this issue because the
default FPGA images do not provide isolated blocks but rather statically
linked chains.  However, I built a custom N310 image with a dynamically
linked "Switchboard" block (which passes data through untouched) so this is
perfect to demonstrate the issue.

Attached is a simple program that shows the issue. See below the console
output for the attached code.

I don't really know if what I'm seeing is artificial. Perhaps in the
internal UHD conversions between tick counts / rates / times, the strange
behavior I'm seeing could be caused by not setting any rates, but I'm not
sure.  I can say that I haven't seen this issue when tx & rx streaming
through radio blocks, but it's possible that it exists but just doesn't
affect my results.

Rob

// ********** console output for attached code **********
$ rfnoc_block_test --args="type=n3xx" --block-id Switchboard#0 --nsamps 100

Creating the USRP device with args: type=n3xx
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.0.0.0-25-g1a34ba8a
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.161.2,type=n3xx,product=n310,serial=315A34B,claimed=False,addr=192.168.61.2
[INFO] [MPM.PeriphManager] init() called with device args
`mgmt_addr=192.168.161.2,product=n310,clock_source=internal,time_source=internal'.
Device creation complete

Block to test: 0/Switchboard#0

tx_streamer->send(), time: 5.6789, tick count: 5678900, nsamps: 100, SOB:
1, EOB: 1
rx_streamer->recv(), time: 6, tick count: 6000000, nsamps: 100, SOB: 0,
EOB: 1

--000000000000478d1305b6c1d4f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I am seeing something strange with timespecs.=C2=
=A0 I am trying to test=C2=A0a single RFNoC block on a device similar to th=
e way in which a testbench tests a single block in simulation.=C2=A0 So, my=
 rfnoc graph looks like &quot;host_tx =3D&gt; block =3D&gt; host_rx&quot;. =
The issue I&#39;m seeing is that the timespec in the rx metadata is a &quot=
;rounded&quot; version of what I put in the tx metadata.</div><div><br></di=
v><div>Unfortunately, it is not trivial to demonstrate this issue because t=
he default FPGA images do not provide isolated blocks but rather statically=
 linked chains.=C2=A0 However, I built a custom N310 image with a dynamical=
ly linked &quot;Switchboard&quot; block (which passes data through untouche=
d) so this is perfect to demonstrate the issue.</div><div><br></div><div>At=
tached is a simple program that shows the issue. See below the console outp=
ut for the attached code.=C2=A0</div><div><br></div><div>I don&#39;t really=
 know if what I&#39;m seeing is artificial. Perhaps in the internal UHD con=
versions between tick counts / rates / times, the strange behavior I&#39;m =
seeing could be caused by not setting any rates, but I&#39;m not sure.=C2=
=A0 I can say that=C2=A0I haven&#39;t seen this issue when tx &amp; rx stre=
aming through radio blocks, but it&#39;s possible that it exists but just d=
oesn&#39;t affect my results.</div><div><br></div><div>Rob</div><div><br></=
div><div><font face=3D"monospace">// **********=C2=A0console output for att=
ached code **********</font></div><div></div><div><font face=3D"monospace">=
$ rfnoc_block_test --args=3D&quot;type=3Dn3xx&quot; --block-id Switchboard#=
0 --nsamps 100 <br><br>Creating the USRP device with args: type=3Dn3xx<br>[=
INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-25-g1a3=
4ba8a<br>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt=
_addr=3D192.168.161.2,type=3Dn3xx,product=3Dn310,serial=3D315A34B,claimed=
=3DFalse,addr=3D192.168.61.2<br>[INFO] [MPM.PeriphManager] init() called wi=
th device args `mgmt_addr=3D192.168.161.2,product=3Dn310,clock_source=3Dint=
ernal,time_source=3Dinternal&#39;.<br>Device creation complete<br><br>Block=
 to test: 0/Switchboard#0<br><br>tx_streamer-&gt;send(), <span style=3D"bac=
kground-color:rgb(255,255,0)">time: 5.6789</span>, tick count: 5678900, nsa=
mps: 100, SOB: 1, EOB: 1<br>rx_streamer-&gt;recv(), <span style=3D"backgrou=
nd-color:rgb(255,255,0)">time: 6</span>, tick count: 6000000, nsamps: 100, =
SOB: 0, EOB: 1<br></font></div><div><font face=3D"monospace"><br></font></d=
iv><div><br></div></div>

--000000000000478d1305b6c1d4f5--
--000000000000478d1505b6c1d4f7
Content-Type: text/x-c++src; charset="US-ASCII"; name="rfnoc_block_test.cpp"
Content-Disposition: attachment; filename="rfnoc_block_test.cpp"
Content-Transfer-Encoding: base64
Content-ID: <f_kiumnz660>
X-Attachment-Id: f_kiumnz660

CiNpbmNsdWRlIDx1aGQvdXRpbHMvc2FmZV9tYWluLmhwcD4KI2luY2x1ZGUgPHVoZC91dGlscy90
aHJlYWQuaHBwPgojaW5jbHVkZSA8dWhkL3Jmbm9jL25vY19ibG9ja19iYXNlLmhwcD4KI2luY2x1
ZGUgPHVoZC9leGNlcHRpb24uaHBwPgoKI2luY2x1ZGUgPHVoZC9yZm5vYy9ibG9ja19pZC5ocHA+
CiNpbmNsdWRlIDx1aGQvcmZub2MvbWJfY29udHJvbGxlci5ocHA+CiNpbmNsdWRlIDx1aGQvcmZu
b2NfZ3JhcGguaHBwPgoKI2luY2x1ZGUgPGJvb3N0L3Byb2dyYW1fb3B0aW9ucy5ocHA+CgojaW5j
bHVkZSA8aW9zdHJlYW0+CiNpbmNsdWRlIDxjc2lnbmFsPgojaW5jbHVkZSA8Y29tcGxleD4KCm5h
bWVzcGFjZSBwbyA9IGJvb3N0Ojpwcm9ncmFtX29wdGlvbnM7CgoKaW50IFVIRF9TQUZFX01BSU4o
aW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSl7CgkvL3ZhcmlhYmxlcyB0byBiZSBzZXQgYnkgcG8KCXN0
ZDo6c3RyaW5nIGFyZ3MsIGJsb2NrX2lkLCBibG9ja19hcmdzOwoJc2l6ZV90IG5zYW1wcywgYmxv
Y2tfcG9ydDsKCQoJLy9zZXR1cCB0aGUgcHJvZ3JhbSBvcHRpb25zCglwbzo6b3B0aW9uc19kZXNj
cmlwdGlvbiBkZXNjKCJBbGxvd2VkIG9wdGlvbnMiKTsKCWRlc2MuYWRkX29wdGlvbnMoKQoJCSgi
aGVscCIsICJoZWxwIG1lc3NhZ2UiKQoJCSgiYXJncyIsIHBvOjp2YWx1ZTxzdGQ6OnN0cmluZz4o
JmFyZ3MpLT5kZWZhdWx0X3ZhbHVlKCIiKSwgIlVTUlAgZGV2aWNlIGFkZHJlc3MgYXJncyIpCgoJ
CSgibnNhbXBzIiwgcG86OnZhbHVlPHNpemVfdD4oJm5zYW1wcyktPmRlZmF1bHRfdmFsdWUoMTAy
NCksICJ0b3RhbCBudW1iZXIgb2Ygc2FtcGxlcyB0byByZWNlaXZlIikKCgkJKCJibG9jay1pZCIs
IHBvOjp2YWx1ZTxzdGQ6OnN0cmluZz4oJmJsb2NrX2lkKS0+ZGVmYXVsdF92YWx1ZSgiIiksICJU
aGlzIGJsb2NrIGlzIGluc2VydGVkIGJldHdlZW4gcmFkaW8gYW5kIGhvc3QuIikKCQkoImJsb2Nr
LWFyZ3MiLCBwbzo6dmFsdWU8c3RkOjpzdHJpbmc+KCZibG9ja19hcmdzKS0+ZGVmYXVsdF92YWx1
ZSgiIiksICJUaGVzZSBhcmdzIGFyZSBwYXNzZWQgc3RyYWlnaHQgdG8gdGhlIGJsb2NrLiIpCgkJ
KCJibG9jay1wb3J0IiwgcG86OnZhbHVlPHNpemVfdD4oJmJsb2NrX3BvcnQpLT5kZWZhdWx0X3Zh
bHVlKDApLCJibG9jayBwb3J0IGluZGV4IikKCTsKCXBvOjp2YXJpYWJsZXNfbWFwIHZtOwoJcG86
OnN0b3JlKHBvOjpwYXJzZV9jb21tYW5kX2xpbmUoYXJnYywgYXJndiwgZGVzYyksIHZtKTsKCXBv
Ojpub3RpZnkodm0pOwoKCS8vcHJpbnQgdGhlIGhlbHAgbWVzc2FnZQoJaWYgKHZtLmNvdW50KCJo
ZWxwIikpIHsKCQlzdGQ6OmNvdXQKCQkJPDwgIlVIRC9SRk5vQyBTaW5nbGUgUkZOb0MgYmxvY2sg
dGVzdCIgPDwgc3RkOjplbmRsIAoJCQk8PCBkZXNjIDw8IHN0ZDo6ZW5kbAoJCQk8PCAiVGhpcyBh
cHBsaWNhdGlvbiB0ZXN0cyBhIHNpbmdsZSBSRk5vQyBibG9jayBieSBzdHJlYW1pbmcgaG9zdF90
eCA9PiBibG9jayA9PiBob3N0X3J4IgoJCQk8PCBzdGQ6OmVuZGwgPDwgc3RkOjplbmRsOwoJCXJl
dHVybiB+MDsKCX0KCQoJLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgoJKiBDcmVhdGUgZGV2aWNlIGFuZCBibG9j
ayBjb250cm9scwoJKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKiovCglzdGQ6OmNvdXQgPDwgc3RkOjplbmRsIDw8ICJD
cmVhdGluZyB0aGUgVVNSUCBkZXZpY2Ugd2l0aCBhcmdzOiAiIDw8IGFyZ3MgPDwgc3RkOjplbmRs
OwoJdWhkOjpyZm5vYzo6cmZub2NfZ3JhcGg6OnNwdHIgdXNycCA9IHVoZDo6cmZub2M6OnJmbm9j
X2dyYXBoOjptYWtlKGFyZ3MpOwoJc3RkOjpjb3V0IDw8ICJEZXZpY2UgY3JlYXRpb24gY29tcGxl
dGUiIDw8IHN0ZDo6ZW5kbCA8PCBzdGQ6OmVuZGw7CgoKCWlmIChibG9ja19pZC5lbXB0eSgpKSB7
CgkJc3RkOjpjb3V0IDw8ICJNdXN0IHNwZWNpZnkgYmxvY2sgSUQiIDw8IHN0ZDo6ZW5kbDsKCQly
ZXR1cm4gRVhJVF9GQUlMVVJFOwoJfSAKCglpZiAobm90IHVzcnAtPmhhc19ibG9jayhibG9ja19p
ZCkpIHsKCQlzdGQ6OmNvdXQgPDwgIkJsb2NrIGRvZXMgbm90IGV4aXN0IG9uIGN1cnJlbnQgZGV2
aWNlOiAiIDw8IGJsb2NrX2lkIDw8IHN0ZDo6ZW5kbDsKCQlyZXR1cm4gRVhJVF9GQUlMVVJFOwoJ
fQoKCWF1dG8gYmxrX2N0cmwgPSB1c3JwLT5nZXRfYmxvY2soYmxvY2tfaWQpOwoKCXN0ZDo6Y291
dCA8PCAiQmxvY2sgdG8gdGVzdDogIiA8PCBibGtfY3RybC0+Z2V0X2Jsb2NrX2lkKCkgPDwgc3Rk
OjplbmRsOwoKCWlmIChub3QgYmxvY2tfYXJncy5lbXB0eSgpKSB7CgkJdWhkOjpkZXZpY2VfYWRk
cl90IHRtcF9hcmdzKGJsb2NrX2FyZ3MpOwoJCXN0ZDo6Y291dCA8PCAiICBTZXR0aW5nIGJsb2Nr
IGFyZ3M6ICIgPDwgdG1wX2FyZ3MudG9fc3RyaW5nKCkgPDwgc3RkOjplbmRsOwoJCWJsa19jdHJs
LT5zZXRfcHJvcGVydGllcyh0bXBfYXJncyk7CQkKCX0KCXN0ZDo6Y291dCA8PCBzdGQ6OmVuZGw7
CgkKCS8vY3JlYXRlIGEgcmVjZWl2ZSBzdHJlYW1lcgoJdWhkOjpzdHJlYW1fYXJnc190IHJ4X3N0
cmVhbV9hcmdzKCJzYzE2IiwgInNjMTYiKTsKCXVoZDo6cnhfc3RyZWFtZXI6OnNwdHIgcnhfc3Ry
ZWFtID0gdXNycC0+Y3JlYXRlX3J4X3N0cmVhbWVyKDEsIHJ4X3N0cmVhbV9hcmdzKTsKCgkvLyBj
cmVhdGUgYSB0cmFuc21pdCBzdHJlYW1lcgoJdWhkOjpzdHJlYW1fYXJnc190IHR4X3N0cmVhbV9h
cmdzKCJzYzE2IiwgInNjMTYiKTsKCXVoZDo6dHhfc3RyZWFtZXI6OnNwdHIgdHhfc3RyZWFtID0g
dXNycC0+Y3JlYXRlX3R4X3N0cmVhbWVyKDEsIHR4X3N0cmVhbV9hcmdzKTsKCgkvLyBjb25uZWN0
IGFuZCBjb21taXQgZ3JhcGgKCXVzcnAtPmNvbm5lY3QoYmxrX2N0cmwtPmdldF9ibG9ja19pZCgp
LCBibG9ja19wb3J0LCByeF9zdHJlYW0sIDApOwoJdXNycC0+Y29ubmVjdCh0eF9zdHJlYW0sIDAs
IGJsa19jdHJsLT5nZXRfYmxvY2tfaWQoKSwgYmxvY2tfcG9ydCk7Cgl1c3JwLT5jb21taXQoKTsK
CQoKCS8vIENyZWF0ZSB2ZWN0b3Igb2Ygc2FtcGxlcyB0byBzZW5kIHRvIHRoZSBibG9jawoJc3Rk
Ojp2ZWN0b3I8c3RkOjpjb21wbGV4PHNob3J0PiA+IGJ1ZmY7CglzdGQ6OmNvbXBsZXg8c2hvcnQ+
IHZhbCgxMDAsMjAwKTsKCWJ1ZmYgPSBzdGQ6OnZlY3RvcjxzdGQ6OmNvbXBsZXg8c2hvcnQ+ID4o
bnNhbXBzLHZhbCk7CgkKCXVoZDo6dHhfbWV0YWRhdGFfdCBtZF90eDsKCW1kX3R4Lmhhc190aW1l
X3NwZWMgPSB0cnVlOwoJbWRfdHgudGltZV9zcGVjID0gNS42Nzg5OwoJbWRfdHguc3RhcnRfb2Zf
YnVyc3QgPSB0cnVlOwoJbWRfdHguZW5kX29mX2J1cnN0ID0gdHJ1ZTsKCXNpemVfdCBudW1fc2Ft
cHMgPSBidWZmLnNpemUoKTsKCglzdGQ6OnZlY3RvcjxzdGQ6OmNvbXBsZXg8c2hvcnQ+ICo+IGJ1
ZmZzKDEsICZidWZmLmZyb250KCkpOwoKCWRvdWJsZSByYXRlID0gMWU2OwoJCglzdGQ6OmNvdXQg
PDwgInR4X3N0cmVhbWVyLT5zZW5kKCkiCgkJPDwgIiwgdGltZTogIiA8PCAobWRfdHguaGFzX3Rp
bWVfc3BlYyA/IG1kX3R4LnRpbWVfc3BlYy5nZXRfcmVhbF9zZWNzKCkgOiAtMS4wKQoJCTw8ICIs
IHRpY2sgY291bnQ6ICIgPDwgbWRfdHgudGltZV9zcGVjLnRvX3RpY2tzKHJhdGUpCgkJPDwgIiwg
bnNhbXBzOiAiIDw8IGJ1ZmYuc2l6ZSgpCgkJPDwgIiwgU09COiAiIDw8IG1kX3R4LnN0YXJ0X29m
X2J1cnN0IAoJCTw8ICIsIEVPQjogIiA8PCBtZF90eC5lbmRfb2ZfYnVyc3QgCgkJPDwgc3RkOjpl
bmRsOwoJCgkvL3R4X3N0cmVhbS0+c2VuZChidWZmcywgYnVmZi5zaXplKCksIG1kX3R4LCAxKTsK
CXR4X3N0cmVhbS0+c2VuZCgmYnVmZi5mcm9udCgpLCBidWZmLnNpemUoKSwgbWRfdHgsIDEpOwoJ
Cgljb25zdCBzaXplX3Qgc2FtcHNfcGVyX2J1ZmYgPSByeF9zdHJlYW0tPmdldF9tYXhfbnVtX3Nh
bXBzKCk7Cgl1aGQ6OnJ4X21ldGFkYXRhX3QgbWRfcng7CglzdGQ6OnZlY3RvcjxzdGQ6OmNvbXBs
ZXg8c2hvcnQ+ID4gYnVmZl9yeChzYW1wc19wZXJfYnVmZik7CgoJc2l6ZV90IG51bV9yeF9zYW1w
cyA9IHJ4X3N0cmVhbS0+cmVjdigmYnVmZl9yeC5mcm9udCgpLCBidWZmX3J4LnNpemUoKSwgbWRf
cngsIDEuMCk7CglzdGQ6OmNvdXQgPDwgInJ4X3N0cmVhbWVyLT5yZWN2KCkiCgkJPDwgIiwgdGlt
ZTogIiA8PCAobWRfcnguaGFzX3RpbWVfc3BlYyA/IG1kX3J4LnRpbWVfc3BlYy5nZXRfcmVhbF9z
ZWNzKCkgOiAtMS4wKQoJCTw8ICIsIHRpY2sgY291bnQ6ICIgPDwgbWRfcngudGltZV9zcGVjLnRv
X3RpY2tzKHJhdGUpCgkJPDwgIiwgbnNhbXBzOiAiIDw8IG51bV9yeF9zYW1wcwoJCTw8ICIsIFNP
QjogIiA8PCBtZF9yeC5zdGFydF9vZl9idXJzdCAKCQk8PCAiLCBFT0I6ICIgPDwgbWRfcnguZW5k
X29mX2J1cnN0CgkJPDwgc3RkOjplbmRsOwoKCQoJcmV0dXJuIEVYSVRfU1VDQ0VTUzsKfQo=
--000000000000478d1505b6c1d4f7
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--000000000000478d1505b6c1d4f7--

