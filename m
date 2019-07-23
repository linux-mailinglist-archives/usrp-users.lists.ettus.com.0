Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E51A71523
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2019 11:27:47 +0200 (CEST)
Received: from [::1] (port=44460 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hpr54-0007j4-BI; Tue, 23 Jul 2019 05:27:34 -0400
Received: from mx-out.tlen.pl ([193.222.135.158]:43382)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <perper@o2.pl>) id 1hpr50-0007ef-I6
 for usrp-users@lists.ettus.com; Tue, 23 Jul 2019 05:27:30 -0400
Received: (wp-smtpd smtp.tlen.pl 6029 invoked from network);
 23 Jul 2019 11:26:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1563874008; bh=mmLsd903dlQqXIC9g4wCcqgYKtHIYbTE8PJZ8v2/Pg0=;
 h=Subject:To:From;
 b=lWdHmot4fPVbO6NmDTYHFCKm7MN5PUhtd0KAXWP0Wr5oqvN+EPRazdNeTRNbnT/vp
 XbRn4Pu5jgiXjZkPFC2mNOEaJynmOfuGAXsge6l03dm1+iQrw6rbEu390miHY0xMYK
 X29caIoPA8x0SUo5HR2plUyZo1dut2QIJUAyG/vQ=
Received: from unknown (HELO [192.168.90.246]) (perper@o2.pl@[194.29.160.241])
 (envelope-sender <perper@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <usrp-users@lists.ettus.com>; 23 Jul 2019 11:26:48 +0200
To: usrp-users@lists.ettus.com
References: <CAAMvqVEabgQrw=sp_EmTwfXPG+pVF5yigwioHf8v6pT+jz=rhQ@mail.gmail.com>
Message-ID: <c110102c-64d6-8fab-2213-2e0f7e8667e1@o2.pl>
Date: Tue, 23 Jul 2019 11:26:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAMvqVEabgQrw=sp_EmTwfXPG+pVF5yigwioHf8v6pT+jz=rhQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary="------------1EF3737AC55D288FD3A77EC0"
Content-Language: en-US
X-WP-MailID: 3f9609920e4dde16aad6a58f81138821
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000002 [oSEC]                               
Subject: Re: [USRP-users] Unable to detect X310 over pcie
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
From: Piotr Krysik via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Piotr Krysik <perper@o2.pl>
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

This is a multi-part message in MIME format.
--------------1EF3737AC55D288FD3A77EC0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi all,

I have the same issue. I've checked everything in different computer
(disk with particular Ubuntu 16.04 installation, PCIexpress card and
PCIe cable) and everything worked fine.

What was left was that caused the issue was particular
motherboard+processor. I don't know if it is just this one but I suppose
the issue might be common to motherboards that have the same components
(i.e. PCIe controller or bridge) as this one. I'm attaching the result
of lspci.

Kailash, can you attach yours (and anyone who's got the same issue)?
Maybe we'll find a common element.

Best Regards,
Piotr Krysik


W dniu 11.06.2019 o 08:55, kailash kumar via USRP-users pisze:
> Hi,
>
> I am unable to detect X310 over pcie. I have installed uhd(v3.14.0.0)
> and compiled and installed RIO drivers as well. Below is my configuration:
>
> UHD RIO Installer version:
> niusrprio-installer-18.0.0
>
> [pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ sudo
> niusrprio_pcie start
> Making sure drivers are up to date...
> Module nikal is up-to-date
> Module nibds is up-to-date
> Module nistreamk is up-to-date
> Module NiRioSrv is up-to-date
> Module niusrpriok is up-to-date
> Loading: NiRioSrv niusrpriok
> Starting: niusrpriorpc
>
> [pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ lsmod |
> grep -i ni
> niusrpriok            417792  0
> NiRioSrv              942080  0
> nistreamk             131072  2 niusrpriok,NiRioSrv
> nibds                  57344  2 niusrpriok,NiRioSrv
> nikal                  98304  4 niusrpriok,NiRioSrv,nistreamk,nibds
>
> [pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ uname -r
> 4.19.48-48.lts2018
>
> [pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ ls /dev/ni/
> 'nistreamk:0\nistreamk\0'
>
> [pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$ sudo
> netstat -anp| grep 5444
> tcp        0      0 0.0.0.0:5444 <http://0.0.0.0:5444>          
>  0.0.0.0:*               LISTEN      1845/niusrpriorpc  
>
> [pretlist@clr-85a7812169e346e6b143a228fe1b9641 Downloads]$
> uhd_usrp_probe --args "type=x300,resource=RIO0"
> [INFO] [UHD] linux; GNU C++ version 9.1.1 20190605
> gcc-9-branch@271943; Boost_106800; UHD_3.14.0.HEAD-0-g6875d061
> [ERROR] [UHD] Device discovery error: input stream error
> Error: LookupError: KeyError: No devices found for ----->
> Device Address:
>     type: x300
>     resource: RIO0
>
> [pretlist@clr-85a7812169e346e6b143a228fe1b9641 uhd]$ git status
> HEAD detached at v3.14.0.0
>
> Digging through uhd code
> lib/usrp/x300/x300_impl.cpp (x300_find_pcie ) ->  
> lib/usrp/x300/x300_impl.cpp
> (niusrprio_session::enumerate(rpc_port_name, dev_info_vtr)) ->
> lib/transport/nirio/niusrprio_session.cpp
> (nirio_status_chain(temp_rpc_client.niusrprio_enumerate(device_info_vtr),
> status)) ->  
> lib/transport/nirio/rpc/usrprio_rpc_client.cpp
>  (usrprio_rpc_client::niusrprio_enumerate(NIUSRPRIO_ENUMERATE_ARGS))
>
> out_args >> status; -> This returns status as -52012
>
> Thanks
> Kailash
>
> ____________


--------------1EF3737AC55D288FD3A77EC0
Content-Type: text/plain; charset=UTF-8;
 name="lspci"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="lspci"

MDA6MDAuMCBIb3N0IGJyaWRnZTogSW50ZWwgQ29ycG9yYXRpb24gOHRoIEdlbiBDb3JlIFBy
b2Nlc3NvciBIb3N0IEJyaWRnZS9EUkFNIFJlZ2lzdGVycyAocmV2IDA3KQowMDowMS4wIFBD
SSBicmlkZ2U6IEludGVsIENvcnBvcmF0aW9uIFhlb24gRTMtMTIwMCB2NS9FMy0xNTAwIHY1
LzZ0aCBHZW4gQ29yZSBQcm9jZXNzb3IgUENJZSBDb250cm9sbGVyICh4MTYpIChyZXYgMDcp
CjAwOjAyLjAgVkdBIGNvbXBhdGlibGUgY29udHJvbGxlcjogSW50ZWwgQ29ycG9yYXRpb24g
RGV2aWNlIDNlOTIKMDA6MTIuMCBTaWduYWwgcHJvY2Vzc2luZyBjb250cm9sbGVyOiBJbnRl
bCBDb3Jwb3JhdGlvbiBDYW5ub24gTGFrZSBQQ0ggVGhlcm1hbCBDb250cm9sbGVyIChyZXYg
MTApCjAwOjE0LjAgVVNCIGNvbnRyb2xsZXI6IEludGVsIENvcnBvcmF0aW9uIENhbm5vbiBM
YWtlIFBDSCBVU0IgMy4xIHhIQ0kgSG9zdCBDb250cm9sbGVyIChyZXYgMTApCjAwOjE0LjIg
UkFNIG1lbW9yeTogSW50ZWwgQ29ycG9yYXRpb24gQ2Fubm9uIExha2UgUENIIFNoYXJlZCBT
UkFNIChyZXYgMTApCjAwOjE2LjAgQ29tbXVuaWNhdGlvbiBjb250cm9sbGVyOiBJbnRlbCBD
b3Jwb3JhdGlvbiBDYW5ub24gTGFrZSBQQ0ggSEVDSSBDb250cm9sbGVyIChyZXYgMTApCjAw
OjE3LjAgU0FUQSBjb250cm9sbGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiBDYW5ub24gTGFrZSBQ
Q0ggU0FUQSBBSENJIENvbnRyb2xsZXIgKHJldiAxMCkKMDA6MWMuMCBQQ0kgYnJpZGdlOiBJ
bnRlbCBDb3Jwb3JhdGlvbiBEZXZpY2UgYTMzZCAocmV2IGYwKQowMDoxYy42IFBDSSBicmlk
Z2U6IEludGVsIENvcnBvcmF0aW9uIERldmljZSBhMzNlIChyZXYgZjApCjAwOjFmLjAgSVNB
IGJyaWRnZTogSW50ZWwgQ29ycG9yYXRpb24gSDM3MCBDaGlwc2V0IExQQy9lU1BJIENvbnRy
b2xsZXIgKHJldiAxMCkKMDA6MWYuMyBBdWRpbyBkZXZpY2U6IEludGVsIENvcnBvcmF0aW9u
IENhbm5vbiBMYWtlIFBDSCBjQVZTIChyZXYgMTApCjAwOjFmLjQgU01CdXM6IEludGVsIENv
cnBvcmF0aW9uIENhbm5vbiBMYWtlIFBDSCBTTUJ1cyBDb250cm9sbGVyIChyZXYgMTApCjAw
OjFmLjUgU2VyaWFsIGJ1cyBjb250cm9sbGVyIFswYzgwXTogSW50ZWwgQ29ycG9yYXRpb24g
Q2Fubm9uIExha2UgUENIIFNQSSBDb250cm9sbGVyIChyZXYgMTApCjAwOjFmLjYgRXRoZXJu
ZXQgY29udHJvbGxlcjogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQgQ29ubmVjdGlvbiAo
NykgSTIxOS1WIChyZXYgMTApCjAxOjAwLjAgUENJIGJyaWRnZTogUExYIFRlY2hub2xvZ3ks
IEluYy4gUEVYIDg2MDggOC1sYW5lLCA4LVBvcnQgUENJIEV4cHJlc3MgR2VuIDIgKDUuMCBH
VC9zKSBTd2l0Y2ggKHJldiBiYSkKMDI6MDEuMCBQQ0kgYnJpZGdlOiBQTFggVGVjaG5vbG9n
eSwgSW5jLiBQRVggODYwOCA4LWxhbmUsIDgtUG9ydCBQQ0kgRXhwcmVzcyBHZW4gMiAoNS4w
IEdUL3MpIFN3aXRjaCAocmV2IGJhKQowNDowMC4wIEV0aGVybmV0IGNvbnRyb2xsZXI6IElu
dGVsIENvcnBvcmF0aW9uIEkyMTEgR2lnYWJpdCBOZXR3b3JrIENvbm5lY3Rpb24gKHJldiAw
MykKMDU6MDAuMCBOZXR3b3JrIGNvbnRyb2xsZXI6IEludGVsIENvcnBvcmF0aW9uIER1YWwg
QmFuZCBXaXJlbGVzcy1BQyAzMTY4TkdXIFtTdG9uZSBQZWFrXSAocmV2IDEwKQo=
--------------1EF3737AC55D288FD3A77EC0
Content-Type: text/plain; charset=UTF-8;
 name="lspci_verbose"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="lspci_verbose"

MDA6MDAuMCBIb3N0IGJyaWRnZTogSW50ZWwgQ29ycG9yYXRpb24gOHRoIEdlbiBDb3JlIFBy
b2Nlc3NvciBIb3N0IEJyaWRnZS9EUkFNIFJlZ2lzdGVycyAocmV2IDA3KQoJRGV2aWNlTmFt
ZTogT25ib2FyZCAtIE90aGVyCglTdWJzeXN0ZW06IEFTUm9jayBJbmNvcnBvcmF0aW9uIERl
dmljZSAzZWMyCglGbGFnczogYnVzIG1hc3RlciwgZmFzdCBkZXZzZWwsIGxhdGVuY3kgMAoJ
Q2FwYWJpbGl0aWVzOiA8YWNjZXNzIGRlbmllZD4KCjAwOjAxLjAgUENJIGJyaWRnZTogSW50
ZWwgQ29ycG9yYXRpb24gWGVvbiBFMy0xMjAwIHY1L0UzLTE1MDAgdjUvNnRoIEdlbiBDb3Jl
IFByb2Nlc3NvciBQQ0llIENvbnRyb2xsZXIgKHgxNikgKHJldiAwNykgKHByb2ctaWYgMDAg
W05vcm1hbCBkZWNvZGVdKQoJRmxhZ3M6IGJ1cyBtYXN0ZXIsIGZhc3QgZGV2c2VsLCBsYXRl
bmN5IDAsIElSUSAxNgoJQnVzOiBwcmltYXJ5PTAwLCBzZWNvbmRhcnk9MDEsIHN1Ym9yZGlu
YXRlPTAzLCBzZWMtbGF0ZW5jeT0wCglJL08gYmVoaW5kIGJyaWRnZTogMDAwMDUwMDAtMDAw
MDVmZmYKCU1lbW9yeSBiZWhpbmQgYnJpZGdlOiBhMTMwMDAwMC1hMTNmZmZmZgoJUHJlZmV0
Y2hhYmxlIG1lbW9yeSBiZWhpbmQgYnJpZGdlOiAwMDAwMDAwMGExNTAwMDAwLTAwMDAwMDAw
YTE3ZmZmZmYKCUNhcGFiaWxpdGllczogPGFjY2VzcyBkZW5pZWQ+CglLZXJuZWwgZHJpdmVy
IGluIHVzZTogcGNpZXBvcnQKCUtlcm5lbCBtb2R1bGVzOiBzaHBjaHAKCjAwOjAyLjAgVkdB
IGNvbXBhdGlibGUgY29udHJvbGxlcjogSW50ZWwgQ29ycG9yYXRpb24gRGV2aWNlIDNlOTIg
KHByb2ctaWYgMDAgW1ZHQSBjb250cm9sbGVyXSkKCURldmljZU5hbWU6IE9uYm9hcmQgLSBW
aWRlbwoJU3Vic3lzdGVtOiBBU1JvY2sgSW5jb3Jwb3JhdGlvbiBEZXZpY2UgM2U5MgoJRmxh
Z3M6IGJ1cyBtYXN0ZXIsIGZhc3QgZGV2c2VsLCBsYXRlbmN5IDAsIElSUSAxMzQKCU1lbW9y
eSBhdCBhMDAwMDAwMCAoNjQtYml0LCBub24tcHJlZmV0Y2hhYmxlKSBbc2l6ZT0xNk1dCglN
ZW1vcnkgYXQgOTAwMDAwMDAgKDY0LWJpdCwgcHJlZmV0Y2hhYmxlKSBbc2l6ZT0yNTZNXQoJ
SS9PIHBvcnRzIGF0IDQwMDAgW3NpemU9NjRdCglbdmlydHVhbF0gRXhwYW5zaW9uIFJPTSBh
dCAwMDBjMDAwMCBbZGlzYWJsZWRdIFtzaXplPTEyOEtdCglDYXBhYmlsaXRpZXM6IDxhY2Nl
c3MgZGVuaWVkPgoJS2VybmVsIGRyaXZlciBpbiB1c2U6IGk5MTUKCUtlcm5lbCBtb2R1bGVz
OiBpOTE1CgowMDoxMi4wIFNpZ25hbCBwcm9jZXNzaW5nIGNvbnRyb2xsZXI6IEludGVsIENv
cnBvcmF0aW9uIENhbm5vbiBMYWtlIFBDSCBUaGVybWFsIENvbnRyb2xsZXIgKHJldiAxMCkK
CURldmljZU5hbWU6IE9uYm9hcmQgLSBPdGhlcgoJU3Vic3lzdGVtOiBBU1JvY2sgSW5jb3Jw
b3JhdGlvbiBEZXZpY2UgYTM3OQoJRmxhZ3M6IGJ1cyBtYXN0ZXIsIGZhc3QgZGV2c2VsLCBs
YXRlbmN5IDAsIElSUSAxNgoJTWVtb3J5IGF0IGExNDNkMDAwICg2NC1iaXQsIG5vbi1wcmVm
ZXRjaGFibGUpIFtzaXplPTRLXQoJQ2FwYWJpbGl0aWVzOiA8YWNjZXNzIGRlbmllZD4KCUtl
cm5lbCBkcml2ZXIgaW4gdXNlOiBpbnRlbF9wY2hfdGhlcm1hbAoJS2VybmVsIG1vZHVsZXM6
IGludGVsX3BjaF90aGVybWFsCgowMDoxNC4wIFVTQiBjb250cm9sbGVyOiBJbnRlbCBDb3Jw
b3JhdGlvbiBDYW5ub24gTGFrZSBQQ0ggVVNCIDMuMSB4SENJIEhvc3QgQ29udHJvbGxlciAo
cmV2IDEwKSAocHJvZy1pZiAzMCBbWEhDSV0pCglEZXZpY2VOYW1lOiBPbmJvYXJkIC0gT3Ro
ZXIKCVN1YnN5c3RlbTogQVNSb2NrIEluY29ycG9yYXRpb24gRGV2aWNlIGEzNmQKCUZsYWdz
OiBidXMgbWFzdGVyLCBtZWRpdW0gZGV2c2VsLCBsYXRlbmN5IDAsIElSUSAxMjYKCU1lbW9y
eSBhdCBhMTQyMDAwMCAoNjQtYml0LCBub24tcHJlZmV0Y2hhYmxlKSBbc2l6ZT02NEtdCglD
YXBhYmlsaXRpZXM6IDxhY2Nlc3MgZGVuaWVkPgoJS2VybmVsIGRyaXZlciBpbiB1c2U6IHho
Y2lfaGNkCgowMDoxNC4yIFJBTSBtZW1vcnk6IEludGVsIENvcnBvcmF0aW9uIENhbm5vbiBM
YWtlIFBDSCBTaGFyZWQgU1JBTSAocmV2IDEwKQoJRGV2aWNlTmFtZTogT25ib2FyZCAtIE90
aGVyCglTdWJzeXN0ZW06IEFTUm9jayBJbmNvcnBvcmF0aW9uIERldmljZSBhMzZmCglGbGFn
czogYnVzIG1hc3RlciwgZmFzdCBkZXZzZWwsIGxhdGVuY3kgMAoJTWVtb3J5IGF0IGExNDM2
MDAwICg2NC1iaXQsIG5vbi1wcmVmZXRjaGFibGUpIFtzaXplPThLXQoJTWVtb3J5IGF0IGEx
NDNjMDAwICg2NC1iaXQsIG5vbi1wcmVmZXRjaGFibGUpIFtzaXplPTRLXQoJQ2FwYWJpbGl0
aWVzOiA8YWNjZXNzIGRlbmllZD4KCjAwOjE2LjAgQ29tbXVuaWNhdGlvbiBjb250cm9sbGVy
OiBJbnRlbCBDb3Jwb3JhdGlvbiBDYW5ub24gTGFrZSBQQ0ggSEVDSSBDb250cm9sbGVyIChy
ZXYgMTApCglEZXZpY2VOYW1lOiBPbmJvYXJkIC0gT3RoZXIKCVN1YnN5c3RlbTogQVNSb2Nr
IEluY29ycG9yYXRpb24gRGV2aWNlIGEzNjAKCUZsYWdzOiBidXMgbWFzdGVyLCBmYXN0IGRl
dnNlbCwgbGF0ZW5jeSAwLCBJUlEgMTM1CglNZW1vcnkgYXQgYTE0M2IwMDAgKDY0LWJpdCwg
bm9uLXByZWZldGNoYWJsZSkgW3NpemU9NEtdCglDYXBhYmlsaXRpZXM6IDxhY2Nlc3MgZGVu
aWVkPgoJS2VybmVsIGRyaXZlciBpbiB1c2U6IG1laV9tZQoJS2VybmVsIG1vZHVsZXM6IG1l
aV9tZQoKMDA6MTcuMCBTQVRBIGNvbnRyb2xsZXI6IEludGVsIENvcnBvcmF0aW9uIENhbm5v
biBMYWtlIFBDSCBTQVRBIEFIQ0kgQ29udHJvbGxlciAocmV2IDEwKSAocHJvZy1pZiAwMSBb
QUhDSSAxLjBdKQoJRGV2aWNlTmFtZTogT25ib2FyZCAtIFNBVEEKCVN1YnN5c3RlbTogQVNS
b2NrIEluY29ycG9yYXRpb24gRGV2aWNlIGEzNTIKCUZsYWdzOiBidXMgbWFzdGVyLCA2Nk1I
eiwgbWVkaXVtIGRldnNlbCwgbGF0ZW5jeSAwLCBJUlEgMTI3CglNZW1vcnkgYXQgYTE0MzQw
MDAgKDMyLWJpdCwgbm9uLXByZWZldGNoYWJsZSkgW3NpemU9OEtdCglNZW1vcnkgYXQgYTE0
M2EwMDAgKDMyLWJpdCwgbm9uLXByZWZldGNoYWJsZSkgW3NpemU9MjU2XQoJSS9PIHBvcnRz
IGF0IDQwOTAgW3NpemU9OF0KCUkvTyBwb3J0cyBhdCA0MDgwIFtzaXplPTRdCglJL08gcG9y
dHMgYXQgNDA2MCBbc2l6ZT0zMl0KCU1lbW9yeSBhdCBhMTQzOTAwMCAoMzItYml0LCBub24t
cHJlZmV0Y2hhYmxlKSBbc2l6ZT0yS10KCUNhcGFiaWxpdGllczogPGFjY2VzcyBkZW5pZWQ+
CglLZXJuZWwgZHJpdmVyIGluIHVzZTogYWhjaQoJS2VybmVsIG1vZHVsZXM6IGFoY2kKCjAw
OjFjLjAgUENJIGJyaWRnZTogSW50ZWwgQ29ycG9yYXRpb24gRGV2aWNlIGEzM2QgKHJldiBm
MCkgKHByb2ctaWYgMDAgW05vcm1hbCBkZWNvZGVdKQoJRmxhZ3M6IGJ1cyBtYXN0ZXIsIGZh
c3QgZGV2c2VsLCBsYXRlbmN5IDAsIElSUSAxMjIKCUJ1czogcHJpbWFyeT0wMCwgc2Vjb25k
YXJ5PTA0LCBzdWJvcmRpbmF0ZT0wNCwgc2VjLWxhdGVuY3k9MAoJSS9PIGJlaGluZCBicmlk
Z2U6IDAwMDAzMDAwLTAwMDAzZmZmCglNZW1vcnkgYmVoaW5kIGJyaWRnZTogYTEyMDAwMDAt
YTEyZmZmZmYKCUNhcGFiaWxpdGllczogPGFjY2VzcyBkZW5pZWQ+CglLZXJuZWwgZHJpdmVy
IGluIHVzZTogcGNpZXBvcnQKCUtlcm5lbCBtb2R1bGVzOiBzaHBjaHAKCjAwOjFjLjYgUENJ
IGJyaWRnZTogSW50ZWwgQ29ycG9yYXRpb24gRGV2aWNlIGEzM2UgKHJldiBmMCkgKHByb2ct
aWYgMDAgW05vcm1hbCBkZWNvZGVdKQoJRmxhZ3M6IGJ1cyBtYXN0ZXIsIGZhc3QgZGV2c2Vs
LCBsYXRlbmN5IDAsIElSUSAxMjMKCUJ1czogcHJpbWFyeT0wMCwgc2Vjb25kYXJ5PTA1LCBz
dWJvcmRpbmF0ZT0wNSwgc2VjLWxhdGVuY3k9MAoJTWVtb3J5IGJlaGluZCBicmlkZ2U6IGEx
MTAwMDAwLWExMWZmZmZmCglDYXBhYmlsaXRpZXM6IDxhY2Nlc3MgZGVuaWVkPgoJS2VybmVs
IGRyaXZlciBpbiB1c2U6IHBjaWVwb3J0CglLZXJuZWwgbW9kdWxlczogc2hwY2hwCgowMDox
Zi4wIElTQSBicmlkZ2U6IEludGVsIENvcnBvcmF0aW9uIEgzNzAgQ2hpcHNldCBMUEMvZVNQ
SSBDb250cm9sbGVyIChyZXYgMTApCglEZXZpY2VOYW1lOiBPbmJvYXJkIC0gT3RoZXIKCVN1
YnN5c3RlbTogQVNSb2NrIEluY29ycG9yYXRpb24gRGV2aWNlIGEzMDQKCUZsYWdzOiBidXMg
bWFzdGVyLCBtZWRpdW0gZGV2c2VsLCBsYXRlbmN5IDAKCjAwOjFmLjMgQXVkaW8gZGV2aWNl
OiBJbnRlbCBDb3Jwb3JhdGlvbiBDYW5ub24gTGFrZSBQQ0ggY0FWUyAocmV2IDEwKQoJRGV2
aWNlTmFtZTogT25ib2FyZCAtIFNvdW5kCglTdWJzeXN0ZW06IEFTUm9jayBJbmNvcnBvcmF0
aW9uIERldmljZSA1ODkyCglGbGFnczogYnVzIG1hc3RlciwgZmFzdCBkZXZzZWwsIGxhdGVu
Y3kgMzIsIElSUSAxMzcKCU1lbW9yeSBhdCBhMTQzMDAwMCAoNjQtYml0LCBub24tcHJlZmV0
Y2hhYmxlKSBbc2l6ZT0xNktdCglNZW1vcnkgYXQgYTEwMDAwMDAgKDY0LWJpdCwgbm9uLXBy
ZWZldGNoYWJsZSkgW3NpemU9MU1dCglDYXBhYmlsaXRpZXM6IDxhY2Nlc3MgZGVuaWVkPgoJ
S2VybmVsIGRyaXZlciBpbiB1c2U6IHNuZF9oZGFfaW50ZWwKCUtlcm5lbCBtb2R1bGVzOiBz
bmRfaGRhX2ludGVsCgowMDoxZi40IFNNQnVzOiBJbnRlbCBDb3Jwb3JhdGlvbiBDYW5ub24g
TGFrZSBQQ0ggU01CdXMgQ29udHJvbGxlciAocmV2IDEwKQoJRGV2aWNlTmFtZTogT25ib2Fy
ZCAtIE90aGVyCglTdWJzeXN0ZW06IEFTUm9jayBJbmNvcnBvcmF0aW9uIERldmljZSBhMzIz
CglGbGFnczogbWVkaXVtIGRldnNlbCwgSVJRIDExCglNZW1vcnkgYXQgYTE0MzgwMDAgKDY0
LWJpdCwgbm9uLXByZWZldGNoYWJsZSkgW3NpemU9MjU2XQoJSS9PIHBvcnRzIGF0IGVmYTAg
W3NpemU9MzJdCglLZXJuZWwgbW9kdWxlczogaTJjX2k4MDEKCjAwOjFmLjUgU2VyaWFsIGJ1
cyBjb250cm9sbGVyIFswYzgwXTogSW50ZWwgQ29ycG9yYXRpb24gQ2Fubm9uIExha2UgUENI
IFNQSSBDb250cm9sbGVyIChyZXYgMTApCglEZXZpY2VOYW1lOiBPbmJvYXJkIC0gT3RoZXIK
CVN1YnN5c3RlbTogQVNSb2NrIEluY29ycG9yYXRpb24gRGV2aWNlIGEzMjQKCUZsYWdzOiBm
YXN0IGRldnNlbAoJTWVtb3J5IGF0IGZlMDEwMDAwICgzMi1iaXQsIG5vbi1wcmVmZXRjaGFi
bGUpIFtzaXplPTRLXQoKMDA6MWYuNiBFdGhlcm5ldCBjb250cm9sbGVyOiBJbnRlbCBDb3Jw
b3JhdGlvbiBFdGhlcm5ldCBDb25uZWN0aW9uICg3KSBJMjE5LVYgKHJldiAxMCkKCURldmlj
ZU5hbWU6IE9uYm9hcmQgLSBFdGhlcm5ldAoJU3Vic3lzdGVtOiBBU1JvY2sgSW5jb3Jwb3Jh
dGlvbiBEZXZpY2UgMTViYwoJRmxhZ3M6IGJ1cyBtYXN0ZXIsIGZhc3QgZGV2c2VsLCBsYXRl
bmN5IDAsIElSUSAxMjgKCU1lbW9yeSBhdCBhMTQwMDAwMCAoMzItYml0LCBub24tcHJlZmV0
Y2hhYmxlKSBbc2l6ZT0xMjhLXQoJQ2FwYWJpbGl0aWVzOiA8YWNjZXNzIGRlbmllZD4KCUtl
cm5lbCBkcml2ZXIgaW4gdXNlOiBlMTAwMGUKCUtlcm5lbCBtb2R1bGVzOiBlMTAwMGUKCjAx
OjAwLjAgUENJIGJyaWRnZTogUExYIFRlY2hub2xvZ3ksIEluYy4gUEVYIDg2MDggOC1sYW5l
LCA4LVBvcnQgUENJIEV4cHJlc3MgR2VuIDIgKDUuMCBHVC9zKSBTd2l0Y2ggKHJldiBiYSkg
KHByb2ctaWYgMDAgW05vcm1hbCBkZWNvZGVdKQoJRmxhZ3M6IGJ1cyBtYXN0ZXIsIGZhc3Qg
ZGV2c2VsLCBsYXRlbmN5IDAsIElSUSAxMjQKCU1lbW9yeSBhdCBhMTMwMDAwMCAoMzItYml0
LCBub24tcHJlZmV0Y2hhYmxlKSBbc2l6ZT0xMjhLXQoJQnVzOiBwcmltYXJ5PTAxLCBzZWNv
bmRhcnk9MDIsIHN1Ym9yZGluYXRlPTAzLCBzZWMtbGF0ZW5jeT0wCglJL08gYmVoaW5kIGJy
aWRnZTogMDAwMDUwMDAtMDAwMDVmZmYKCVByZWZldGNoYWJsZSBtZW1vcnkgYmVoaW5kIGJy
aWRnZTogMDAwMDAwMDBhMTUwMDAwMC0wMDAwMDAwMGExN2ZmZmZmCglDYXBhYmlsaXRpZXM6
IDxhY2Nlc3MgZGVuaWVkPgoJS2VybmVsIGRyaXZlciBpbiB1c2U6IHBjaWVwb3J0CglLZXJu
ZWwgbW9kdWxlczogc2hwY2hwCgowMjowMS4wIFBDSSBicmlkZ2U6IFBMWCBUZWNobm9sb2d5
LCBJbmMuIFBFWCA4NjA4IDgtbGFuZSwgOC1Qb3J0IFBDSSBFeHByZXNzIEdlbiAyICg1LjAg
R1QvcykgU3dpdGNoIChyZXYgYmEpIChwcm9nLWlmIDAwIFtOb3JtYWwgZGVjb2RlXSkKCUZs
YWdzOiBidXMgbWFzdGVyLCBmYXN0IGRldnNlbCwgbGF0ZW5jeSAwLCBJUlEgMTI1CglCdXM6
IHByaW1hcnk9MDIsIHNlY29uZGFyeT0wMywgc3Vib3JkaW5hdGU9MDMsIHNlYy1sYXRlbmN5
PTAKCUkvTyBiZWhpbmQgYnJpZGdlOiAwMDAwNTAwMC0wMDAwNWZmZgoJUHJlZmV0Y2hhYmxl
IG1lbW9yeSBiZWhpbmQgYnJpZGdlOiAwMDAwMDAwMGExNTAwMDAwLTAwMDAwMDAwYTE2ZmZm
ZmYKCUNhcGFiaWxpdGllczogPGFjY2VzcyBkZW5pZWQ+CglLZXJuZWwgZHJpdmVyIGluIHVz
ZTogcGNpZXBvcnQKCUtlcm5lbCBtb2R1bGVzOiBzaHBjaHAKCjA0OjAwLjAgRXRoZXJuZXQg
Y29udHJvbGxlcjogSW50ZWwgQ29ycG9yYXRpb24gSTIxMSBHaWdhYml0IE5ldHdvcmsgQ29u
bmVjdGlvbiAocmV2IDAzKQoJU3Vic3lzdGVtOiBBU1JvY2sgSW5jb3Jwb3JhdGlvbiBJMjEx
IEdpZ2FiaXQgTmV0d29yayBDb25uZWN0aW9uCglGbGFnczogYnVzIG1hc3RlciwgZmFzdCBk
ZXZzZWwsIGxhdGVuY3kgMCwgSVJRIDE3CglNZW1vcnkgYXQgYTEyMDAwMDAgKDMyLWJpdCwg
bm9uLXByZWZldGNoYWJsZSkgW3NpemU9MTI4S10KCUkvTyBwb3J0cyBhdCAzMDAwIFtzaXpl
PTMyXQoJTWVtb3J5IGF0IGExMjIwMDAwICgzMi1iaXQsIG5vbi1wcmVmZXRjaGFibGUpIFtz
aXplPTE2S10KCUNhcGFiaWxpdGllczogPGFjY2VzcyBkZW5pZWQ+CglLZXJuZWwgZHJpdmVy
IGluIHVzZTogaWdiCglLZXJuZWwgbW9kdWxlczogaWdiCgowNTowMC4wIE5ldHdvcmsgY29u
dHJvbGxlcjogSW50ZWwgQ29ycG9yYXRpb24gRHVhbCBCYW5kIFdpcmVsZXNzLUFDIDMxNjhO
R1cgW1N0b25lIFBlYWtdIChyZXYgMTApCglTdWJzeXN0ZW06IEludGVsIENvcnBvcmF0aW9u
IERldmljZSAyMTEwCglGbGFnczogYnVzIG1hc3RlciwgZmFzdCBkZXZzZWwsIGxhdGVuY3kg
MCwgSVJRIDEzNgoJTWVtb3J5IGF0IGExMTAwMDAwICg2NC1iaXQsIG5vbi1wcmVmZXRjaGFi
bGUpIFtzaXplPThLXQoJQ2FwYWJpbGl0aWVzOiA8YWNjZXNzIGRlbmllZD4KCUtlcm5lbCBk
cml2ZXIgaW4gdXNlOiBpd2x3aWZpCglLZXJuZWwgbW9kdWxlczogaXdsd2lmaQoK
--------------1EF3737AC55D288FD3A77EC0
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------1EF3737AC55D288FD3A77EC0--

